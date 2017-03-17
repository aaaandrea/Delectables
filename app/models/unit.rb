# == Schema Information
#
# Table name: units
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Unit < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :recipe_ingredients

  def self.find_by_credentials(name)
    unit = Unit.find_by(name: name)
    unit ? unit : nil
  end

end
