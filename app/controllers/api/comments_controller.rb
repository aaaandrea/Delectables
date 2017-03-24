class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      @recipe = Recipe.find(comment_params[:recipe_id])
      render "api/recipes/show"
    else
      render json: ['Cannot submit comment at this time'], status: 422
    end
  end

  def index
    @comments = Comment.where(recipe_id: params[:recipe_id])
    if @comments
      @recipe = Recipe.find(params[:comment][:recipe_id])
      render "api/recipes/show"
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
