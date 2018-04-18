require 'test_helper'

class EntityControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get entity_new_url
    assert_response :success
  end

end
