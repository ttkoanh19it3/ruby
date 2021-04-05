require "test_helper"

class TheloaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theloai = theloais(:one)
  end

  test "should get index" do
    get theloais_url
    assert_response :success
  end

  test "should get new" do
    get new_theloai_url
    assert_response :success
  end

  test "should create theloai" do
    assert_difference('Theloai.count') do
      post theloais_url, params: { theloai: { ma_theloai: @theloai.ma_theloai, ten_theloai: @theloai.ten_theloai } }
    end

    assert_redirected_to theloai_url(Theloai.last)
  end

  test "should show theloai" do
    get theloai_url(@theloai)
    assert_response :success
  end

  test "should get edit" do
    get edit_theloai_url(@theloai)
    assert_response :success
  end

  test "should update theloai" do
    patch theloai_url(@theloai), params: { theloai: { ma_theloai: @theloai.ma_theloai, ten_theloai: @theloai.ten_theloai } }
    assert_redirected_to theloai_url(@theloai)
  end

  test "should destroy theloai" do
    assert_difference('Theloai.count', -1) do
      delete theloai_url(@theloai)
    end

    assert_redirected_to theloais_url
  end
end
