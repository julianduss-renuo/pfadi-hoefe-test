require "application_system_test_case"

class SponsorsTest < ApplicationSystemTestCase
  setup do
    @sponsor = sponsors(:one)
  end

  test "visiting the index" do
    visit sponsors_url
    assert_selector "h1", text: "Sponsors"
  end

  test "should create sponsor" do
    visit sponsors_url
    click_on "New sponsor"

    fill_in "Link", with: @sponsor.link
    fill_in "Name", with: @sponsor.name
    click_on "Create Sponsor"

    assert_text "Sponsor was successfully created"
    click_on "Back"
  end

  test "should update Sponsor" do
    visit sponsor_url(@sponsor)
    click_on "Edit this sponsor", match: :first

    fill_in "Link", with: @sponsor.link
    fill_in "Name", with: @sponsor.name
    click_on "Update Sponsor"

    assert_text "Sponsor was successfully updated"
    click_on "Back"
  end

  test "should destroy Sponsor" do
    visit sponsor_url(@sponsor)
    click_on "Destroy this sponsor", match: :first

    assert_text "Sponsor was successfully destroyed"
  end
end
