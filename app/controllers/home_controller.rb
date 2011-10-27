class HomeController < ApplicationController
	layout :choose_layout
	skip_before_filter :require_login

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