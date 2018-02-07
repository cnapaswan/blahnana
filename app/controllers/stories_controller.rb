class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    # @story_entries = @story.story_entries
    @story_entries = StoryEntry.where(story_id: params[:id])

  end

  def api_create
    story = Story.new
    story.title = params[:title]
    story.image_url = params[:image_url]
    story.story_img = params[:img_file]
    if story.save 
      render json: story
    else
      render json: {error: "error is here"}
    end
  end



end
