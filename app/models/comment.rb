class Comment < ApplicationRecord
  validates :body, :user_id, presence: true

  belongs_to :recipe
  belongs_to :user
end
