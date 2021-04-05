require "test_helper"

class DanhmuctacgiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danhmuctacgium = danhmuctacgia(:one)
  end

  test "should get index" do
    get danhmuctacgia_url
    assert_response :success
  end

  test "should get new" do
    get new_danhmuctacgium_url
    assert_response :success
  end

  test "should create danhmuctacgium" do
    assert_difference('Danhmuctacgium.count') do
      post danhmuctacgia_url, params: { danhmuctacgium: { ghichu: @danhmuctacgium.ghichu, mtg: @danhmuctacgium.mtg, ten_tacgia: @danhmuctacgium.ten_tacgia, website: @danhmuctacgium.website } }
    end

    assert_redirected_to danhmuctacgium_url(Danhmuctacgium.last)
  end

  test "should show danhmuctacgium" do
    get danhmuctacgium_url(@danhmuctacgium)
    assert_response :success
  end

  test "should get edit" do
    get edit_danhmuctacgium_url(@danhmuctacgium)
    assert_response :success
  end

  test "should update danhmuctacgium" do
    patch danhmuctacgium_url(@danhmuctacgium), params: { danhmuctacgium: { ghichu: @danhmuctacgium.ghichu, mtg: @danhmuctacgium.mtg, ten_tacgia: @danhmuctacgium.ten_tacgia, website: @danhmuctacgium.website } }
    assert_redirected_to danhmuctacgium_url(@danhmuctacgium)
  end

  test "should destroy danhmuctacgium" do
    assert_difference('Danhmuctacgium.count', -1) do
      delete danhmuctacgium_url(@danhmuctacgium)
    end

    assert_redirected_to danhmuctacgia_url
  end
end
