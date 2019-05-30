require "application_system_test_case"

class OyunsTest < ApplicationSystemTestCase
  setup do
    @oyun = oyuns(:one)
  end

  test "visiting the index" do
    visit oyuns_url
    assert_selector "h1", text: "Oyuns"
  end

  test "creating a Oyun" do
    visit oyuns_url
    click_on "New Oyun"

    fill_in "Aciklama", with: @oyun.aciklama
    fill_in "Isim", with: @oyun.isim
    click_on "Create Oyun"

    assert_text "Oyun was successfully created"
    click_on "Back"
  end

  test "updating a Oyun" do
    visit oyuns_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @oyun.aciklama
    fill_in "Isim", with: @oyun.isim
    click_on "Update Oyun"

    assert_text "Oyun was successfully updated"
    click_on "Back"
  end

  test "destroying a Oyun" do
    visit oyuns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oyun was successfully destroyed"
  end
end
