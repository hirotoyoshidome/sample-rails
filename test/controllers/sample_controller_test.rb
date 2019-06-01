require 'test_helper'

class SampleControllerTest < ActionDispatch::IntegrationTest
  test "should get up" do
    get sample_up_url
    assert_response :success
  end

  test "should get down" do
    get sample_down_url
    assert_response :success
  end

end
