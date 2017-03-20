class AddIngredientsIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :ingredients, :title
    add_index :ingredients, :quantity
    add_index :ingredients, :unit
    add_index :ingredients, :recipe_id
  end
end
