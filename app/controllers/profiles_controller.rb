class ProfilesController < ApplicationController
	skip_before_filter :require_login
	
  def show
  	raise ActiveRecord::RecordNotFound unless @user = User.find_by_id(params[:user_id])
  end

end
