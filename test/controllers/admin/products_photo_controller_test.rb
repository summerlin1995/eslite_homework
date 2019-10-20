require 'test_helper'

class Admin::ProductsPhotoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_products_photo_index_url
    assert_response :success
  end

  test "should get create" do
    get admin_products_photo_create_url
    assert_response :success
  end

end
