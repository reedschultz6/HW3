class PostsController < ApplicationController
  def new
    @place = Place.find(params[:place_id]) if params[:place_id] # Check if place_id is given
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to place_path(@post.place_id)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :place_id)
  end
end
