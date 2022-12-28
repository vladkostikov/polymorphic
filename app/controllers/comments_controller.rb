class CommentsController < ApplicationController
  def create
    instance = correct_instance
    comment = instance.comments.create(comment_params)
    redirect_to instance
  end

  private

  def correct_instance
    Post.find(params[:comment][:post_id]) if params[:comment][:post_id]
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
