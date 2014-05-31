module TOTP
  module CLI
    class Clipboard
      class << self
        def set(text)
          if OS.mac?
            osx_copy(text)

            puts "Copied #{text} to clipboard"
          else
            puts "Platform clipboard not supported"
          end
        end

        private

        def osx_copy(text)
          IO.popen('reattach-to-user-namespace pbcopy', 'w') { |i| i << text }
        end
      end
    end
  end
end
