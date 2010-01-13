require File.dirname(__FILE__) + '/../spec_helper'

describe Recortable do
  it "should be valid" do
    Recortable.new.should be_valid
  end
end
