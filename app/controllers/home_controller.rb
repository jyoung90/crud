class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    
    redirect_to '/posts'
  end
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    
    redirect_to '/posts'
  end
  
  def edit
    @post = Post.find(params[:post_id])
  end
  
  def update
    post = Post.find(params[:post_id])
    post.title = params[:title]
    post.content = params[:content]
    post.save
    
    redirect_to '/posts'
  end
end
