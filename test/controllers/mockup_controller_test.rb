require 'test_helper'

class MockupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mockup_index_url
    assert_response :success
  end

end
