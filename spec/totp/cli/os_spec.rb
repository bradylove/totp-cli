require 'spec_helper'

describe TOTP::CLI::OS do
  context 'when on osx' do
    before do
      expect(RbConfig::CONFIG).to receive(:[])
        .with('arch')
        .and_return('x86_64-darwin13.2.0')
    end

    its(:mac?) { should be_true }
    its(:linux?) { should be_false }
    its(:windows?) { should be_false }
  end

  context 'when on linux' do
    before do
      expect(RbConfig::CONFIG).to receive(:[])
        .with('arch')
        .and_return('x86_64-linux')
    end

    its(:linux?) { should be_true }
    its(:mac?) { should be_false }
    its(:windows?) { should be_false }
  end

  context 'when on windows' do
    before do
      expect(RbConfig::CONFIG).to receive(:[])
        .with('arch')
        .and_return('windows')
    end

    its(:windows?) { should be_true }
    its(:linux?) { should be_false }
    its(:mac?) { should be_false }
  end
end
