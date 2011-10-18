class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_users_list
  
  protected

  def current_users_list
    current_users.map {|u| u.name}.join(", ")
  end

  private

  def not_authenticated
  	redirect_to login_url, :alert => "Please login to access this page"
  end
end
