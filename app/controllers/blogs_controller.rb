class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    # モデル名はblogなのでblog_paramsにする
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end

end
