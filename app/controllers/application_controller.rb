class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def admin?
    if current_user.email == "mjw@ga.co"
      return true
    else
      return false
    end
  end
  helper_method :admin?

end
