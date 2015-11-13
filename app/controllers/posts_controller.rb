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

  def tag_names=(tags)
    tags.split(",").collect{|t| t.strip}.each do |tag|
      this_tag = Tag.find_or_create_by(name: Tag.clean_name(tag))
      self.tags << this_tag
    end
  end

  def tag_names
    self.tags.collect{|t| t.name}.join(", ")
  end
end
