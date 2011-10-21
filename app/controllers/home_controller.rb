class HomeController < ApplicationController
	layout :choose_layout
	before_filter :require_login, :only => :secret
	
  def index
  end

  def about
  end

  def choose_layout
  	if ['index'].include? action_name
  		'home_index'
  	else
  		'home'
  	end
  end

end