require 'test_helper'

class FolksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get folks_index_url
    assert_response :success
  end

  test "should get show" do
    get folks_show_url
    assert_response :success
  end

  test "should get new" do
    get folks_new_url
    assert_response :success
  end

  test "should get edit" do
    get folks_edit_url
    assert_response :success
  end

end
