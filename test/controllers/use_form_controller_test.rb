require 'test_helper'

class UseFormControllerTest < ActionDispatch::IntegrationTest
  test "should get up" do
    get use_form_up_url
    assert_response :success
  end

  test "should get down" do
    get use_form_down_url
    assert_response :success
  end

end
