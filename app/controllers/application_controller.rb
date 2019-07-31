class ApplicationController < ActionController::Base
  helper_method :logged_in?

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      false
    end
  end

  def logged_in?
    if current_user
      return true
    else
      return false
    end
  end

  def authorized?
    redirect_to login_path unless logged_in?
  end
end
