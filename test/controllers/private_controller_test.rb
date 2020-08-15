require 'test_helper'

class PrivateControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in users(:jane)
    get private_index_url
    assert_response :success

    sign_out users(:jane)
  end

end
