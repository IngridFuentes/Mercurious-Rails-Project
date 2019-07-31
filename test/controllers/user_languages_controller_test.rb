require 'test_helper'

class UserLanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_languages_index_url
    assert_response :success
  end

  test "should get show" do
    get user_languages_show_url
    assert_response :success
  end

  test "should get new" do
    get user_languages_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_languages_edit_url
    assert_response :success
  end

end
