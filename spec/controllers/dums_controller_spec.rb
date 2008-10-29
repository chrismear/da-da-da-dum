require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DumsController do

  #Delete these examples and add some real ones
  it "should use DumsController" do
    controller.should be_an_instance_of(DumsController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "PUT 'create'" do
    it "should be successful" do
      put 'create'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show', :id => 1
      response.should be_success
    end
  end
end
