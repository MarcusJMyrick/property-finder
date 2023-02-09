require "application_system_test_case"

class PropertsTest < ApplicationSystemTestCase
  setup do
    @propert = properts(:one)
  end

  test "visiting the index" do
    visit properts_url
    assert_selector "h1", text: "Properts"
  end

  test "should create propert" do
    visit properts_url
    click_on "New propert"

    fill_in "Address", with: @propert.address
    fill_in "Bathrooms", with: @propert.bathrooms
    fill_in "Name", with: @propert.name
    fill_in "Price", with: @propert.price
    fill_in "Rooms", with: @propert.rooms
    click_on "Create Propert"

    assert_text "Propert was successfully created"
    click_on "Back"
  end

  test "should update Propert" do
    visit propert_url(@propert)
    click_on "Edit this propert", match: :first

    fill_in "Address", with: @propert.address
    fill_in "Bathrooms", with: @propert.bathrooms
    fill_in "Name", with: @propert.name
    fill_in "Price", with: @propert.price
    fill_in "Rooms", with: @propert.rooms
    click_on "Update Propert"

    assert_text "Propert was successfully updated"
    click_on "Back"
  end

  test "should destroy Propert" do
    visit propert_url(@propert)
    click_on "Destroy this propert", match: :first

    assert_text "Propert was successfully destroyed"
  end
end
