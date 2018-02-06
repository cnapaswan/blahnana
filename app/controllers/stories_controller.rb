class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @story_entries = @story.story_entries

  end

  def create
    story = Story.new
    story.title = params[:title]
    story.image_url = params[:image_url]
    if story.save
      redirect_to "/"
    else
      redirect_to '/'
    end
  end


end
