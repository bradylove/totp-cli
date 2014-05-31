require 'pstore'

module TOTP
  module CLI
    class Store
      attr_accessor :store

      def initialize(file)
        @store = PStore.new(file)
      end

      def read_all
        tokens = []

        store.transaction(true) do
          store.roots.each_with_index do |label, index|
            tokens << Token.new(id:     index,
                                label:  label,
                                secret: store[label])
          end
        end

        tokens
      end

      def save(label, secret)
        store.transaction do
          store[label] = secret
        end
      end

      def remove(label)
        store.transaction do
          store.delete(label)
        end
      end
    end
  end
end
