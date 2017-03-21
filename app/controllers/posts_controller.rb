class PostsController < ApplicationController
	def index
		@posts = Post.all.order('created_at DESC')
	end

	def create
		@post = Post.new(title: params[:post][:title], body: params[:post][:body])
		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params [:id])
	end

	def edit
		@post = post.find(params [:id])
		if @post.update_attributes(title: params[:post][:title], body: params[:post][:body])
			redirect_to posts_path
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params [:id])
		@post = Post.destroy
		redirect_to posts_path
	end
end
