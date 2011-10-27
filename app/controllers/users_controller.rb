class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  layout 'home'

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to :users, :notice => "Signed up!"
  	else
  		render :new
  	end
  end

end
