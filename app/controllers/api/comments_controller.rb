class Api::CommentsController < ApplicationController
  def create
    @comment.create(comment_params)
    if @comment.save
      render "api/comments/show"
    else
      render json: ['Cannot submit comment at this time'], status: 422
    end
  end

  def index
    @comments = Comment.where(recipe_id: params[:recipeId])
    if @comments
      render 'api/comments/index'
    else
      render json: ['There are no comments'], status: 401
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render 'api/comments/show'
    else
      render json: ['This comment does not exist'], status: 422
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :recipe_id)
  end
end
