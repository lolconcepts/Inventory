require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Cost per year", with: @item.cost_per_year
    fill_in "Decom", with: @item.decom
    fill_in "Eol", with: @item.eol
    fill_in "Eos", with: @item.eos
    fill_in "Location", with: @item.location_id
    fill_in "Model", with: @item.model
    fill_in "Notes", with: @item.notes
    fill_in "Onboard", with: @item.onboard
    fill_in "Serial number", with: @item.serial_number
    fill_in "Status", with: @item.status_id
    fill_in "Vendor", with: @item.vendor_id
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Cost per year", with: @item.cost_per_year
    fill_in "Decom", with: @item.decom
    fill_in "Eol", with: @item.eol
    fill_in "Eos", with: @item.eos
    fill_in "Location", with: @item.location_id
    fill_in "Model", with: @item.model
    fill_in "Notes", with: @item.notes
    fill_in "Onboard", with: @item.onboard
    fill_in "Serial number", with: @item.serial_number
    fill_in "Status", with: @item.status_id
    fill_in "Vendor", with: @item.vendor_id
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
