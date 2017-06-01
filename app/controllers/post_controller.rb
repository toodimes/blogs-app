class PostController < ApplicationController

  def index
    @posts = Post.all.order(:views => :desc)
    @recent_posts = Post.limit(5).order(id: :desc)
    @popular_posts = Post.limit(2).order(views: :desc)
    render "index.html.erb"
  end

  def new
    if current_user
      render "new.html.erb"
    else
      flash[:danger] = "You must be logged in to post blogs."
      redirect_to "/users/sign_in"
    end
  end

  def create
    blog_post = Post.create(title: params[:title], content: params[:content], user_id: current_user.id)
    redirect_to "/post/#{blog_post.id}/edit"
  end

  def edit
    @blog_post = Post.find_by(id: params[:id])
    render "edit.html.erb"
  end


  def show
    @blog_post = Post.find_by(id: params[:id])
    @blog_post.increase_views
    @blog_post.save
    render "show.html.erb"
  end

  def update
    blog_post = Post.find_by(id: params[:id])
    blog_post.update(title: params[:title], content: params[:content], is_published: true)
    flash[:success] = "Your post has been published!"
    redirect_to "/post/#{blog_post.id}"
  end

end
