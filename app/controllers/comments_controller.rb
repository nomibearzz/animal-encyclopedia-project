class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_back(fallback_location: animals_path)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :user_id, :animal_id)
  end
end
