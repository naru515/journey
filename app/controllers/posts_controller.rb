class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    # @post = Posts.new
  end 
  
  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:name, :image, :text)
  end

end
