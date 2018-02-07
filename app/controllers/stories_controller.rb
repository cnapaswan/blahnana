class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @story_entries = @story.story_entries

  end

  def api_create
    story = Story.new
    story.title = params[:title]
    story.image_url = params[:image_url]
    if story.save
      render json: story
    else
      redirect_to '/oops'
    end
  end


end
