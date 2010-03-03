require File.dirname(__FILE__) + '/../spec_helper'

describe Modelo do
  it "should be valid" do
    Modelo.new.should be_valid
  end
end

# == Schema Information
#
# Table name: modelos
#
#  id         :integer(4)      not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

