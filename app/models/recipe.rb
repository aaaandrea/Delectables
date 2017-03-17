# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  directions :text             not null
#  img        :text
#  tag_id     :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Recipe < ApplicationRecord
  validates :name, :directions, :tag_id, :user_id, presence: true

  belongs_to :tag
  belongs_to :user

  has_many :recipe_ingredients

end
