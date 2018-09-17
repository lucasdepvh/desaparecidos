require "application_system_test_case"

class DisappearedsTest < ApplicationSystemTestCase
  setup do
    @disappeared = disappeareds(:one)
  end

  test "visiting the index" do
    visit disappeareds_url
    assert_selector "h1", text: "Disappeareds"
  end

  test "creating a Disappeared" do
    visit disappeareds_url
    click_on "New Disappeared"

    fill_in "Age", with: @disappeared.age
    fill_in "Birthdate", with: @disappeared.birthdate
    fill_in "Dad", with: @disappeared.dad
    fill_in "Date Desapearence", with: @disappeared.date_desapearence
    fill_in "Mother", with: @disappeared.mother
    fill_in "Name", with: @disappeared.name
    fill_in "Sex", with: @disappeared.sex
    fill_in "Street", with: @disappeared.street_id
    fill_in "User", with: @disappeared.user_id
    click_on "Create Disappeared"

    assert_text "Disappeared was successfully created"
    click_on "Back"
  end

  test "updating a Disappeared" do
    visit disappeareds_url
    click_on "Edit", match: :first

    fill_in "Age", with: @disappeared.age
    fill_in "Birthdate", with: @disappeared.birthdate
    fill_in "Dad", with: @disappeared.dad
    fill_in "Date Desapearence", with: @disappeared.date_desapearence
    fill_in "Mother", with: @disappeared.mother
    fill_in "Name", with: @disappeared.name
    fill_in "Sex", with: @disappeared.sex
    fill_in "Street", with: @disappeared.street_id
    fill_in "User", with: @disappeared.user_id
    click_on "Update Disappeared"

    assert_text "Disappeared was successfully updated"
    click_on "Back"
  end

  test "destroying a Disappeared" do
    visit disappeareds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disappeared was successfully destroyed"
  end
end
