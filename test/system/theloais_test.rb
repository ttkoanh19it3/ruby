require "application_system_test_case"

class TheloaisTest < ApplicationSystemTestCase
  setup do
    @theloai = theloais(:one)
  end

  test "visiting the index" do
    visit theloais_url
    assert_selector "h1", text: "Theloais"
  end

  test "creating a Theloai" do
    visit theloais_url
    click_on "New Theloai"

    fill_in "Ma theloai", with: @theloai.ma_theloai
    fill_in "Ten theloai", with: @theloai.ten_theloai
    click_on "Create Theloai"

    assert_text "Theloai was successfully created"
    click_on "Back"
  end

  test "updating a Theloai" do
    visit theloais_url
    click_on "Edit", match: :first

    fill_in "Ma theloai", with: @theloai.ma_theloai
    fill_in "Ten theloai", with: @theloai.ten_theloai
    click_on "Update Theloai"

    assert_text "Theloai was successfully updated"
    click_on "Back"
  end

  test "destroying a Theloai" do
    visit theloais_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Theloai was successfully destroyed"
  end
end
