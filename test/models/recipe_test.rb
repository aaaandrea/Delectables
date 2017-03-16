# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  ingredients :text             not null
#  directions  :text             not null
#  img         :text
#  tag_id      :integer          not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
