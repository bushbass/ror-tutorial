require "application_system_test_case"

class FrozenItemsTest < ApplicationSystemTestCase
  setup do
    @frozen_item = frozen_items(:one)
  end

  test "visiting the index" do
    visit frozen_items_url
    assert_selector "h1", text: "Frozen items"
  end

  test "should create frozen item" do
    visit frozen_items_url
    click_on "New frozen item"

    fill_in "Date on package", with: @frozen_item.date_on_package
    fill_in "Frozen item", with: @frozen_item.frozen_item
    click_on "Create Frozen item"

    assert_text "Frozen item was successfully created"
    click_on "Back"
  end

  test "should update Frozen item" do
    visit frozen_item_url(@frozen_item)
    click_on "Edit this frozen item", match: :first

    fill_in "Date on package", with: @frozen_item.date_on_package
    fill_in "Frozen item", with: @frozen_item.frozen_item
    click_on "Update Frozen item"

    assert_text "Frozen item was successfully updated"
    click_on "Back"
  end

  test "should destroy Frozen item" do
    visit frozen_item_url(@frozen_item)
    click_on "Destroy this frozen item", match: :first

    assert_text "Frozen item was successfully destroyed"
  end
end
