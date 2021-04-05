require "application_system_test_case"

class DanhmuctacgiaTest < ApplicationSystemTestCase
  setup do
    @danhmuctacgium = danhmuctacgia(:one)
  end

  test "visiting the index" do
    visit danhmuctacgia_url
    assert_selector "h1", text: "Danhmuctacgia"
  end

  test "creating a Danhmuctacgium" do
    visit danhmuctacgia_url
    click_on "New Danhmuctacgium"

    fill_in "Ghichu", with: @danhmuctacgium.ghichu
    fill_in "Mtg", with: @danhmuctacgium.mtg
    fill_in "Ten tacgia", with: @danhmuctacgium.ten_tacgia
    fill_in "Website", with: @danhmuctacgium.website
    click_on "Create Danhmuctacgium"

    assert_text "Danhmuctacgium was successfully created"
    click_on "Back"
  end

  test "updating a Danhmuctacgium" do
    visit danhmuctacgia_url
    click_on "Edit", match: :first

    fill_in "Ghichu", with: @danhmuctacgium.ghichu
    fill_in "Mtg", with: @danhmuctacgium.mtg
    fill_in "Ten tacgia", with: @danhmuctacgium.ten_tacgia
    fill_in "Website", with: @danhmuctacgium.website
    click_on "Update Danhmuctacgium"

    assert_text "Danhmuctacgium was successfully updated"
    click_on "Back"
  end

  test "destroying a Danhmuctacgium" do
    visit danhmuctacgia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Danhmuctacgium was successfully destroyed"
  end
end
