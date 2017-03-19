class Api::RecipesController < ApplicationController

  def index
    if !params[:tag_id]
      @recipes = Recipe.all
    else
      @recipes = Recipe.where(tag_id: params[:tag_id]).all
    end
    render json:@recipes
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
    @recipe = Recipe.create!(recipe_params)
    @recipe_ingredients = RecipeIngredient.create!(recipe_ingredient_params)
    if @recipe.save && @recipe_ingredients.save
      render "api/recipes/show/:id"
    else
      render json: @recipe.errors.full_messages, status: 422
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      render "api/recipes/show/:id"
    else
      render json: @recipe.errors.full_messages, status: 422
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      render 'api/recipes/show'
    else
      render json: ["This cannot be deleted"], status: 422
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :directions)
  end

  def recipe_ingredient_params
    params.require(recipe_ingredients: []).permit(:quantity, :ingredient_name, :unit_id)
  end
end
