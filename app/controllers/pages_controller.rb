class PagesController < ApplicationController
  def show 
  @stories = Story.all 
  end

  def oops
  end


end
