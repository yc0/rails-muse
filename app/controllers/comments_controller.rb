class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id 
    @comment.post_id = @post.id

    if @comment.save
      redirect_to @post
    else
      render 'New'
    end 
  end


  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
