require 'test_helper'

class Api::TagControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_tag_index_url
    assert_response :success
  end

end
