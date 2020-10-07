class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    session[:name]
  end

  def logged_in?
    !!current_user
  end 

  def display_greeting
    if logged_in?
      "Hi, #{current_user}"
    else
      "Hi."
    end
  end

end
