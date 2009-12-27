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

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the correct title" do
      get 'about'
      response.should have_tag("title", "herwiggy - about")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the correct title" do
      get 'contact'
      response.should have_tag("title", "herwiggy - contact")
    end
  end
end
