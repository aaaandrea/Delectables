class ChangeIngredientsTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :name
    add_column :ingredients, :title, :string
    add_column :ingredients, :quantity, :string
    add_column :ingredients, :unit, :string
    add_column :ingredients, :recipe_id, :integer
  end
end
