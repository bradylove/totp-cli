require 'rotp'
require 'etc'

module TOTP
  module CLI
    class Token
      class << self
        def all
          store.read_all
        end

        def find_by_id(id)
          all.each do |token|
            return token if token.id == id
          end

          nil
        end

        def find_by_label(label)
          all.each do |token|
            return token if token.label == label
          end

          nil
        end

        def create(label, secret)
          store.save(label, secret)

          find_by_label(label)
        end

        def store
          filepath = File.join(Etc.getpwuid.dir, ".totp-cli")
          Store.new(filepath)
        end
      end

      attr_accessor :id, :label, :secret

      def initialize(options = {})
        @id     = options[:id]
        @label  = options[:label]
        @secret = options[:secret]
      end

      def now
        otp = totp.now.to_s

        while otp.length < 6
          otp = "0" + otp
        end

        otp
      end

      def delete!
        self.class.store.remove(label)
      end

      private

      def totp
        @totp ||= ROTP::TOTP.new(secret)
      end
    end
  end
end
