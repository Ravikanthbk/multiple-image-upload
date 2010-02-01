require 'spec_helper'

describe Image do
  before(:each) do
    @valid_attributes = {
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Image.create!(@valid_attributes)
  end
end
