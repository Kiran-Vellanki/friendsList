require "test_helper"

class Friends2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friends2 = friends2s(:one)
  end

  test "should get index" do
    get friends2s_url
    assert_response :success
  end

  test "should get new" do
    get new_friends2_url
    assert_response :success
  end

  test "should create friends2" do
    assert_difference("Friends2.count") do
      post friends2s_url, params: { friends2: { email: @friends2.email, first_name: @friends2.first_name, insta: @friends2.insta, last_name: @friends2.last_name, phone: @friends2.phone, reg_num: @friends2.reg_num } }
    end

    assert_redirected_to friends2_url(Friends2.last)
  end

  test "should show friends2" do
    get friends2_url(@friends2)
    assert_response :success
  end

  test "should get edit" do
    get edit_friends2_url(@friends2)
    assert_response :success
  end

  test "should update friends2" do
    patch friends2_url(@friends2), params: { friends2: { email: @friends2.email, first_name: @friends2.first_name, insta: @friends2.insta, last_name: @friends2.last_name, phone: @friends2.phone, reg_num: @friends2.reg_num } }
    assert_redirected_to friends2_url(@friends2)
  end

  test "should destroy friends2" do
    assert_difference("Friends2.count", -1) do
      delete friends2_url(@friends2)
    end

    assert_redirected_to friends2s_url
  end
end
