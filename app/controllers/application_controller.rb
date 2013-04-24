class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_timezone
  def set_timezone
    Time.zone = 'US/Eastern'
  end

  def admin_signed_in?
    current_user && current_user.admin?
  end
end
