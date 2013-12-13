class PostsController < ApplicationController
before_filter :authorise, :only => [:create, :destroy]
 
	def create
		@team = Team.find params[:team_id]
		@post = @team.posts.create params[:post]
		@post.team_id = @current_team.id
		@post.user_id = @current_user.id
		
		
		 
		 
		respond_to do |format|
			format.js 
			format.html{redirect_to @team}
		end
	end

	def destroy
		@team = Team.find(params[:team_id])
		@post = Post.find(params[:id])
		@post.destroy
		
		respond_to do|format|
			format.html{redirect_to @team }
		
		end
	
	end
end
