class HomeController < ApplicationController
	layout "home"
	before_filter :require_login, :only => :secret
	
  def index
  end

  def about
  end

end