class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients do |t|
      t.string :quantity
      t.integer :recipe_id, null: false
      t.integer :ingredient_id, null: false
      t.integer :unit_id

      t.timestamps
    end
    add_index :recipe_ingredients, :recipe_id
    add_index :recipe_ingredients, :ingredient_id
  end
end
