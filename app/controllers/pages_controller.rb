class PagesController < ApplicationController
  def home
  if signed_in? 
	@user = User.find(session[:user_id])
	end 
  end

  def about
  end
end
