# == Schema Information
#
# Table name: recipe_ingredients
#
#  id            :integer          not null, primary key
#  quantity      :string
#  recipe_id     :integer          not null
#  ingredient_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  unit          :string
#

class RecipeIngredient < ApplicationRecord
  validates :recipe, :ingredient, presence: true

  belongs_to :recipe
  belongs_to :ingredient

end
