# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#  quantity   :string
#  unit       :string
#  recipe_id  :integer
#

class Ingredient < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :recipe, presence: true

  belongs_to :recipe

end
