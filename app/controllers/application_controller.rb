class ApplicationController < ActionController::Base
#  before_action :authenticate_user!
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_ahtorized
  protect_from_forgery

  private
  def user_not_authorized
    flash[:alert] = "Access Denied."
    redirect_to (request.referrer || root_path)
  end
end
