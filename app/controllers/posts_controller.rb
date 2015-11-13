class PostsController < ApplicationController
  def index
    render template: "posts/index.html.erb"
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Account registered!"
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @posts = Post.all
    #if current_user_session
    @post = Post.new
    render template: "posts/new"


end
end
