require 'spec_helper'

describe PagesController do
  integrate_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the correct title" do
      get 'home'
      response.should have_tag("title", "herwiggy - home")
    end
  end

  describe "GET 'skis'" do
    it "should be successful" do
      get 'skis'
      response.should be_success
    end
    
    it "should have the correct title" do
      get 'skis'
      response.should have_tag("title", "herwiggy - skis")
    end
  end

  describe "GET 'construction'" do
    it "should be successful" do
      get 'construction'
      response.should be_success
    end
    
    it "should have the correct title" do
      get 'construction'
      response.should have_tag("title", "herwiggy - construction")
    end
  end
end
