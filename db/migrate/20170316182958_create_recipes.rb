class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :ingredients, null: false
      t.text :directions, null: false
      t.text :img
      t.integer :tag_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :recipes, :name
    add_index :recipes, :ingredients
    add_index :recipes, :directions
    add_index :recipes, :user_id
  end
end
