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

require 'test_helper'

class RecipeIngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
