class SessionsController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]
  layout 'home'

  def new
  end

  def create
  	user = login(params[:email], params[:password], remember_me = true)
  	if user
  		redirect_back_or_to root_url, :notice => "Signed in!"
  	else
  		flash.now.alert = "Email or password was invalid"
  		render :new
  	end
	end

	def destroy
		logout
		redirect_to root_url, :notice => "Signed out"
	end

end
