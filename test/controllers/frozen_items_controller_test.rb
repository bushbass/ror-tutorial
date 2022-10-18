require "test_helper"

class FrozenItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frozen_item = frozen_items(:one)
  end

  test "should get index" do
    get frozen_items_url
    assert_response :success
  end

  test "should get new" do
    get new_frozen_item_url
    assert_response :success
  end

  test "should create frozen_item" do
    assert_difference("FrozenItem.count") do
      post frozen_items_url, params: { frozen_item: { date_on_package: @frozen_item.date_on_package, frozen_item: @frozen_item.frozen_item } }
    end

    assert_redirected_to frozen_item_url(FrozenItem.last)
  end

  test "should show frozen_item" do
    get frozen_item_url(@frozen_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_frozen_item_url(@frozen_item)
    assert_response :success
  end

  test "should update frozen_item" do
    patch frozen_item_url(@frozen_item), params: { frozen_item: { date_on_package: @frozen_item.date_on_package, frozen_item: @frozen_item.frozen_item } }
    assert_redirected_to frozen_item_url(@frozen_item)
  end

  test "should destroy frozen_item" do
    assert_difference("FrozenItem.count", -1) do
      delete frozen_item_url(@frozen_item)
    end

    assert_redirected_to frozen_items_url
  end
end
