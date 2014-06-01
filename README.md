# TOTP CLI
======================================

TOTP CLI is a command line application for storing and generating OTP (One Time Password)
tokens. This is a quick rushed through version that doesn't have any tests.

I plan to do a complete rewrite with tests and a few more features. Until then
feel free to fork and add or tweak.

## Installation

    gem install totp-cli

For clipboard functionality to work on OSX you need to install reattach-to-user-namespace

    brew install reattach-to-user-namespace

For clipboard funcationality to work on Linux you need to install xsel

    sudo apt-get install xsel # Debian/Ubuntu
    sudo yum install xsel     # Fedora, Red Hat, CentOS
    sudo pacman -S xsel       # Arch Linux

## Usage

Getting help:

    totp --help

Adding a token:

    totp add -l <label> -s <secret>

Listing tokens:

    totp list

Showing a single token:

    totp now -i <id>
    totp now -l <label>

Show single token and copy OTP to clipboard

    totp now -i <id> -c
    totp now -l <label> -c

Remove a token

    totp remove -i <id>
    totp remove -l <label>

## License

Copyright (c) 2014 Brady Love

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
