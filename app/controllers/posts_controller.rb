class PostsController < ApplicationController
  before_action :find_post, only: [:show, :update, :edit, :destroy]
  before_action :authenticate_user!, except: [:index, :show ]
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post
    else
      render 'New'
    end
  end

  def edit
   end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'Edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :link, :description, :image)
  end

  def find_post
    @post = Post.find(params[:id]) 
  end
end
