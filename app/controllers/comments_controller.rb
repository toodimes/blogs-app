class CommentsController < ApplicationController

  def new
    # redirect_to "/post/#{blog_post.id}"
  end

  def create
    comment = Comment.create(user_id: current_user.id, post_id: params[:post_id], content: params[:content])
    blog_post = Post.find_by(id: params[:post_id])
    redirect_to "/post/#{blog_post.id}"
  end

  def edit

  end

  def update

  end
end
