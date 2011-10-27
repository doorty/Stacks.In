class ApplicationController < ActionController::Base
  before_filter :require_login
  rescue_from ActiveRecord::RecordNotFound, :with => :custom_render_404
  protect_from_forgery

  helper_method :current_users_list
  
  protected

  def current_users_list
    current_users.map {|u| u.name}.join(", ")
  end

  private

  def not_authenticated
  	redirect_to signin_url, :alert => "Please login to access this page"
  end

  def custom_render_404
    redirect_to root_url, :alert => "Sorry, that page does not exist"
  end
end
