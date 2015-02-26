class PostsController < ApplicationController
  before_action :find_post, only: [:show, :update, :edit, :destroy]
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :link, :description)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
