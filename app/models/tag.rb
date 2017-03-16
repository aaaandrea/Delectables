# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  img        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  validates :name, :img, uniqueness: true, presence: true

  has_many :recipes

  def self.find_by_credentials(name)
    tag = Tag.find_by(name: name)
    tag ? tag : nil
  end

end
