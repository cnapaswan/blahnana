class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @story_entries = StoryEntry.where(story_id: params[:id])
  end

  def create
    if !current_user
      redirect_to '/login'
    else
      story = Story.new
      story.title = params[:title]
      story.story_img = params[:img_file]
      if story.save
        redirect_to "/stories/#{story.id}"
      else
        render json: {error: "error is here"}
      end
    end
  end

  def api_show
    story = Story.last
    render json: story
  end

  def delete
    redirect_to'/login' unless admin?
    story = Story.find(params[:story_id])
    story.destroy
    redirect '/'
  end




end
