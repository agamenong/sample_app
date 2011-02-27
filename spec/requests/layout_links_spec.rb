require 'spec_helper'

describe "Layout Links" do

  it "should have a Home Page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end   
  
  it "should have a Contact page at '/contact" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end  

  it "should have a About page at '/about" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end  

  it "should have a Help page at '/help" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end  

end
