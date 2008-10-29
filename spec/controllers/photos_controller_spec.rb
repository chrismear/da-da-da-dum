require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PhotosController do

  #Delete these examples and add some real ones
  it "should use PhotosController" do
    controller.should be_an_instance_of(PhotosController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index', :dum_id => 1
      response.should be_success
    end
  end
end
