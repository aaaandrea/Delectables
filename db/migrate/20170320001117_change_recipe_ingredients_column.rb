class ChangeRecipeIngredientsColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipe_ingredients, :unit_id
    add_column :recipe_ingredients, :unit, :string
  end
end
