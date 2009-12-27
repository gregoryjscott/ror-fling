class PagesController < ApplicationController
  def home
    @title = "home"
  end

  def skis
    @title = "skis"
  end

  def construction
    @title = "construction"
  end
  
  def about
    @title = "about"
  end
  
  def contact
    @title = "contact"
  end
end
