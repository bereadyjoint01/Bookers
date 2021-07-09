class BooksController < ApplicationController
  def show
  end

  def index
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to '/books'
  end

  def edit
  end

   private
  def blog_params
    params.permit(:title, :body)
  end
end