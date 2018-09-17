require "application_system_test_case"

class HistoricsTest < ApplicationSystemTestCase
  setup do
    @historic = historics(:one)
  end

  test "visiting the index" do
    visit historics_url
    assert_selector "h1", text: "Historics"
  end

  test "creating a Historic" do
    visit historics_url
    click_on "New Historic"

    fill_in "Date", with: @historic.date
    fill_in "Description", with: @historic.description
    fill_in "Disapeared", with: @historic.disapeared_id
    fill_in "Status", with: @historic.status_id
    fill_in "Text", with: @historic.text
    click_on "Create Historic"

    assert_text "Historic was successfully created"
    click_on "Back"
  end

  test "updating a Historic" do
    visit historics_url
    click_on "Edit", match: :first

    fill_in "Date", with: @historic.date
    fill_in "Description", with: @historic.description
    fill_in "Disapeared", with: @historic.disapeared_id
    fill_in "Status", with: @historic.status_id
    fill_in "Text", with: @historic.text
    click_on "Update Historic"

    assert_text "Historic was successfully updated"
    click_on "Back"
  end

  test "destroying a Historic" do
    visit historics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historic was successfully destroyed"
  end
end
