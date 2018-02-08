class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @story_entries = StoryEntry.where(story_id: params[:id])
  end

  def create
    story = Story.new
    story.title = params[:title]
    story.story_img = params[:img_file]
    if story.save 
      redirect_to '/'
    else
      render json: {error: "error is here"}
    end
  end

  def api_show
    story = Story.last
    render json: story
  end

end
