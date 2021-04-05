require "application_system_test_case"

class NhaxuatbansTest < ApplicationSystemTestCase
  setup do
    @nhaxuatban = nhaxuatbans(:one)
  end

  test "visiting the index" do
    visit nhaxuatbans_url
    assert_selector "h1", text: "Nhaxuatbans"
  end

  test "creating a Nhaxuatban" do
    visit nhaxuatbans_url
    click_on "New Nhaxuatban"

    fill_in "Diachi", with: @nhaxuatban.diachi
    fill_in "Email", with: @nhaxuatban.email
    fill_in "Manxb", with: @nhaxuatban.maNXB
    fill_in "Ten nxb", with: @nhaxuatban.ten_NXB
    fill_in "Thongtin", with: @nhaxuatban.thongtin
    click_on "Create Nhaxuatban"

    assert_text "Nhaxuatban was successfully created"
    click_on "Back"
  end

  test "updating a Nhaxuatban" do
    visit nhaxuatbans_url
    click_on "Edit", match: :first

    fill_in "Diachi", with: @nhaxuatban.diachi
    fill_in "Email", with: @nhaxuatban.email
    fill_in "Manxb", with: @nhaxuatban.maNXB
    fill_in "Ten nxb", with: @nhaxuatban.ten_NXB
    fill_in "Thongtin", with: @nhaxuatban.thongtin
    click_on "Update Nhaxuatban"

    assert_text "Nhaxuatban was successfully updated"
    click_on "Back"
  end

  test "destroying a Nhaxuatban" do
    visit nhaxuatbans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nhaxuatban was successfully destroyed"
  end
end
