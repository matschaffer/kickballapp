class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin_signed_in?
    current_user && current_user.admin?
  end
end
