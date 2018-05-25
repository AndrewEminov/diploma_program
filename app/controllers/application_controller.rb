class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def redirect_if_not_logged_in
    redirect_to(root_path) unless logged_in?
  end

  def redirect_if_not_admin
    redirect_to(root_path) unless logged_in? && current_user.is_admin?
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

end
