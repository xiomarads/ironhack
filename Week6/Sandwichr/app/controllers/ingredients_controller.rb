class IngredientsController < ApplicationController
  protect_from_forgery with: :null_session

  def index     #retrieves list of all ingredients from db.
    ingredients = Ingredient.all    #or .where
    render json: ingredients   #ingredients is a placeholder.
  end

  def create
    ingredient = Ingredient.create(ingredient_params)
    render json: ingredient
    # or x = ingredient.new(
    # name: params[:ingredient] [:name],
    # calories: paramas[:ingredient] [:calories])
    # x.save
    # render json: x  ......but if it's more items, it would be too lengthy.  With ingredient params we define it privately below to avoid writing each item.
    # )
    # ===> we can use create or new and save.
  end

    def show
      ingredient = Ingredient.find(params[:id])
      render json: ingredient
    end

    def update
      ingredient = Ingredient.find(params[:id])
      ingredient.update(ingredient_params)
      render json: ingredient
    end

    def destroy
      ingredient = Ingredient.find(params[:id])
      ingredient.destroy
      render json: ingredient
    end


    private

    def ingredient_params
      params.require(:ingredient)
      .permit(:name, :calories)
      # above we could add more items if there were more, in place of doing the hash manually.
    end
  end
