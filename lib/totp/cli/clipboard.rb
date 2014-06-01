module TOTP
  module CLI
    class Clipboard
      class << self
        def set(text)
          if OS.mac?
            osx_copy(text)
          elsif OS.linux?
            linux_copy(text)
          else
            puts "Platform clipboard not supported"
            return
          end

          puts "Copied #{text} to clipboard"
        end

        private

        def osx_copy(text)
          IO.popen('reattach-to-user-namespace pbcopy', 'w') { |i| i << text }
        end

        def linux_copy(text)
          IO.popen('xsel -b', 'w') do |i|
            i << text
          end
        end
      end
    end
  end
end
