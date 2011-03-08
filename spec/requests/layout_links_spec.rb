require 'spec_helper'

describe "Layout Links" do

  it "should have a Home Page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end   
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end  

  it "should have a About page at '/about'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end  

  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end  
  
  it "should have a sign up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end

  it "should have a sign in page at '/signin'" do
    get '/signin'
    response.should have_selector('title', :content => "Sign in")
  end
  
  it "should have the rigth links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign up") 
    response.should have_selector('a[href="/"]>img')
  end
      

end
