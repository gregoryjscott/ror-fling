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

end
