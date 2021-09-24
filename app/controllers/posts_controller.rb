class PostsController < ApplicationController

  def show
    post = Post.find(params[:id])
    
    render json: post
  end

  def update
    post = Post.find(params[:id])
      if post.is_valid?
    post.update(post_params)

    render json: post
      else
        render json: {error "crap"}
      end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

end
