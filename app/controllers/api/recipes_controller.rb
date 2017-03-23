class Api::RecipesController < ApplicationController

  def index
    if !params[:tag_id]
      @recipes = Recipe.all
    else
      @recipes = Recipe.where(tag_id: params[:tag_id]).all
    end
    render json: @recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    if @recipe
      render "api/recipes/show"
    else
      render(json: ["This recipe does not exist"], status: 422)
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.tag = Tag.find(recipe_params[:tag_id])
    @recipe.user_id = current_user.id
    if @recipe.save
      ingredients_params[:ingredients].each do |ingredient|
        Ingredient.create(title: ingredient[:title],
                          quantity: ingredient[:quantity],
                          unit: ingredient[:unit],
                          recipe_id: @recipe.id)
      end
      render "api/recipes/show"
    else
      render json: @recipe.errors.full_messages, status: 422
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      ingredients_params[:ingredients].each do |ingredient|
        Ingredient.create(title: ingredient[:title],
                          quantity: ingredient[:quantity],
                          unit: ingredient[:unit],
                          recipe_id: @recipe.id)
      end
      render "api/recipes/show"
    else
      render json: ["Update information is incorrect"], status: 422
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    # @ingredients = Ingredient.all.where(recipe_id == @recipe.id)
    # debugger
    if @recipe.destroy
      # @ingredients.destroy
      render 'api/recipes/index'
    else
      render json: ["Recipe cannot be deleted"], status: 422
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name,
      :directions,
      :tag_id,
      :user_id,
      :img
    )
  end

  def ingredients_params
    params.require(:recipe).permit(ingredients: [:title, :quantity, :unit])
  end
end
