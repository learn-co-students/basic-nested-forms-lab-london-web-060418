class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "Ingredient 1")
    @recipe.ingredients.build(name: "Ingredient 2")
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.ingredients.build(recipe_params[:ingredients_attributes]["0"])
    @recipe.ingredients.build(recipe_params[:ingredients_attributes]["1"])
    redirect_to @recipe
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
