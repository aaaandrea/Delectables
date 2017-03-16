class Api::RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    # render :new
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    if @recipe.save
      # render :show
    else
      # errors
      # render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    # render :edit
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      # render :show
    else
      # errors
      # render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    # render index
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :directions)
  end
end
