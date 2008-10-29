require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Dum do
  fixtures :dums
  
  before(:each) do
    @valid_attributes = {
    }
  end
  
  it "should create a new instance given valid attributes" do
    Dum.create!(@valid_attributes)
  end
  
  it "should generate a random code, eight characters long" do
    code = Dum.generate_code
    code.length.should == 8
  end
  
  it "should give itself a new code when created" do
    dum = Dum.create
    dum.reload
    dum.code.should_not be_nil
  end
  
  it "should have a custom param of its code" do
    dums(:one).to_param.should == "6a2a385d"
  end
end
