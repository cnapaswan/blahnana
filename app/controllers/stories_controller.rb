class StoriesController < ApplicationController
  def new
  end

  def create
    story = Story.new
    story.title = params[:title]
    story.image_url = params[:image_url]
    if story.save
      redirect_to "/"
    else
      redirect_to 'stories/new'
    end
    
  end
end
