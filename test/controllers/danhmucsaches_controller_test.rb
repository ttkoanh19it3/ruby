require "test_helper"

class DanhmucsachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danhmucsach = danhmucsaches(:one)
  end

  test "should get index" do
    get danhmucsaches_url
    assert_response :success
  end

  test "should get new" do
    get new_danhmucsach_url
    assert_response :success
  end

  test "should create danhmucsach" do
    assert_difference('Danhmucsach.count') do
      post danhmucsaches_url, params: { danhmucsach: { maNXB: @danhmucsach.maNXB, ma_sach: @danhmucsach.ma_sach, mtg: @danhmucsach.mtg, mtl: @danhmucsach.mtl, nxb: @danhmucsach.nxb, ten_sach: @danhmucsach.ten_sach } }
    end

    assert_redirected_to danhmucsach_url(Danhmucsach.last)
  end

  test "should show danhmucsach" do
    get danhmucsach_url(@danhmucsach)
    assert_response :success
  end

  test "should get edit" do
    get edit_danhmucsach_url(@danhmucsach)
    assert_response :success
  end

  test "should update danhmucsach" do
    patch danhmucsach_url(@danhmucsach), params: { danhmucsach: { maNXB: @danhmucsach.maNXB, ma_sach: @danhmucsach.ma_sach, mtg: @danhmucsach.mtg, mtl: @danhmucsach.mtl, nxb: @danhmucsach.nxb, ten_sach: @danhmucsach.ten_sach } }
    assert_redirected_to danhmucsach_url(@danhmucsach)
  end

  test "should destroy danhmucsach" do
    assert_difference('Danhmucsach.count', -1) do
      delete danhmucsach_url(@danhmucsach)
    end

    assert_redirected_to danhmucsaches_url
  end
end
