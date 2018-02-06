class PagesController < ApplicationController
  def show 
  @stories = Story.all 
  end



end
