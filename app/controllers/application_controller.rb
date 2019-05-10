class ApplicationController < ActionController::Base

helper_method :current_user

  def get_notification
    flash["message"]
  end 

  def set_notification(message)
    flash["message"] = message
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  # helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

  # def log_in_user(user_id)
  #   session[:user_id] = user_id
  # end

end
