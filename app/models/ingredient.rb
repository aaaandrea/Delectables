# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :recipe_ingredients

  def self.find_by_credentials(name)
    ingredient = Ingredient.find_by(name: name)
    ingredient ? ingredient : nil
  end
end
