class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_ahtorized
  protect_from_forgery

  private
  def user_not_authorized
    flash[:alert] = "Access Denied."
    redirect_to (request.referrer || root_path)
  end
end
