require "application_system_test_case"

class DanhmucsachesTest < ApplicationSystemTestCase
  setup do
    @danhmucsach = danhmucsaches(:one)
  end

  test "visiting the index" do
    visit danhmucsaches_url
    assert_selector "h1", text: "Danhmucsaches"
  end

  test "creating a Danhmucsach" do
    visit danhmucsaches_url
    click_on "New Danhmucsach"

    fill_in "Manxb", with: @danhmucsach.maNXB
    fill_in "Ma sach", with: @danhmucsach.ma_sach
    fill_in "Mtg", with: @danhmucsach.mtg
    fill_in "Mtl", with: @danhmucsach.mtl
    fill_in "Nxb", with: @danhmucsach.nxb
    fill_in "Ten sach", with: @danhmucsach.ten_sach
    click_on "Create Danhmucsach"

    assert_text "Danhmucsach was successfully created"
    click_on "Back"
  end

  test "updating a Danhmucsach" do
    visit danhmucsaches_url
    click_on "Edit", match: :first

    fill_in "Manxb", with: @danhmucsach.maNXB
    fill_in "Ma sach", with: @danhmucsach.ma_sach
    fill_in "Mtg", with: @danhmucsach.mtg
    fill_in "Mtl", with: @danhmucsach.mtl
    fill_in "Nxb", with: @danhmucsach.nxb
    fill_in "Ten sach", with: @danhmucsach.ten_sach
    click_on "Update Danhmucsach"

    assert_text "Danhmucsach was successfully updated"
    click_on "Back"
  end

  test "destroying a Danhmucsach" do
    visit danhmucsaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Danhmucsach was successfully destroyed"
  end
end
