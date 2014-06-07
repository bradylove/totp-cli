module TOTP
  module CLI
    module OS
      class << self
        def windows?
          (/windows|mswin/ =~ arch) != nil
        end

        def mac?
          (/darwin/ =~ arch) != nil
        end

        def linux?
          (/linux/ =~ arch) != nil
        end

        private

        def arch
          RbConfig::CONFIG['arch']
        end
      end
    end
  end
end
