require 'test_helper'

class Admin::ProductPhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_product_photos_index_url
    assert_response :success
  end

  test "should get create" do
    get admin_product_photos_create_url
    assert_response :success
  end

end
