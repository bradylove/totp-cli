require 'spec_helper'
require 'totp/cli'

describe Totp::Cli do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_empty
  end
end
