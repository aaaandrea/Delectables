# == Schema Information
#
# Table name: recipe_ingredients
#
#  id            :integer          not null, primary key
#  quantity      :string
#  recipe_id     :integer          not null
#  ingredient_id :integer          not null
#  unit_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RecipeIngredient < ApplicationRecord
  validates :recipe_id, :ingredient_id, presence: true

  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :unit


end
