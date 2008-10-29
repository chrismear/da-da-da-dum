require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/misc/home" do
  before(:each) do
    render 'misc/home'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/misc/home])
  end
end
