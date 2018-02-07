class StoryEntriesController < ApplicationController

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  # def create
  #   @story_entries = StoryEntry.new
  #   @story_entries.story_id = params[:story_id]
  #   @story_entries.user_id = params[:user_id]
  #   @story_entries.body = params[:body]
  #   if @story_entries.save
  #     redirect_to "/"
  #   end
  # end

  def api_create
    story_entries = StoryEntry.new
    story_entries.story_id = params[:story_id]
    story_entries.user_id = params[:user_id]
    story_entries.body = params[:body]

    if story_entries.save
      render json: story_entries
    else
      redirect_to '/oops'
    end
    # if @story_entries.save
    #   # render json: @story_entries
    #   redirect_to "/stories/#{params[:story_id]}"
    #
    # else
    #   raise "booyah!"
    # end
  end


  def api_all
    redirect_to'/login' unless current_user.present?()
    @story_entries = StoryEntry.all
    render json: @story_entries
  end



end
