class SessionsController < ApplicationController

  def new
	
  end

  def create
	user = User.find_by_name(params[:name])
	
	if user && user.authenticate(params[:password])
		
		session[:user_id] = user.id
		if session[:return_to] == nil
			session[:return_to] = home
		else
			redirect_to session[:return_to]
		end
	else 
		flash[:notice] = "Invalid name or password.Enter again:"
		render 'new'
  end
  end

  def destroy
	if signed_in?
		session[:user_id] = nil		
		session[:return_to] = pages_home_path
		else
		flash[:notice] = "You need to sign in first"
			end
			redirect_to signin_path
 end



end
