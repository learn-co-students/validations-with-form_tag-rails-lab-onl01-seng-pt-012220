class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      flash[:success] = "Your post has been successfully updated."
      redirect_to post_path(@post)
    else
      flash.now[:error] = "Unable to update your post. Please correct the following errors:"
      render :edit
    end

    
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
