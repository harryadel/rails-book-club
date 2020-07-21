class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :title, :comment)
  end
end
