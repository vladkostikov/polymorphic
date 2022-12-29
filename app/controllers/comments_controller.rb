class CommentsController < ApplicationController
  def create
    instance = correct_instance
    comment = instance.comments.create(comment_params)
    redirect_to instance
  end

  private

  def correct_instance
    return Post.find(params[:comment][:post_id]) if params[:comment][:post_id]
    return Image.find(params[:comment][:image_id]) if params[:comment][:image_id]
    return Link.find(params[:comment][:link_id]) if params[:comment][:link_id]
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
