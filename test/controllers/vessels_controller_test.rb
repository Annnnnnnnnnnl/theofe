require 'test_helper'

class VesselsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vessels_index_url
    assert_response :success
  end

  test "should get show" do
    get vessels_show_url
    assert_response :success
  end

  test "should get new" do
    get vessels_new_url
    assert_response :success
  end

  test "should get create" do
    get vessels_create_url
    assert_response :success
  end

  test "should get edit" do
    get vessels_edit_url
    assert_response :success
  end

  test "should get update" do
    get vessels_update_url
    assert_response :success
  end

end
