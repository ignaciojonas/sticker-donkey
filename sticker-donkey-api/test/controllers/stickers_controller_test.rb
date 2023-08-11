require "test_helper"

class StickersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sticker = stickers(:donkey)
  end

  test "should get index" do
    get stickers_url, as: :json
    assert_response :success
  end

  test "should create sticker" do
    assert_difference("Sticker.count") do
      post stickers_url, params: { sticker: { image_url: @sticker.image_url, name: @sticker.name, price: @sticker.price } }, as: :json
    end

    assert_response :created
  end

  test "should show sticker" do
    get sticker_url(@sticker), as: :json
    assert_response :success
  end

  test "should update sticker" do
    patch sticker_url(@sticker), params: { sticker: { image_url: @sticker.image_url, name: @sticker.name, price: @sticker.price } }, as: :json
    assert_response :success
  end

  test "should destroy sticker" do
    assert_difference("Sticker.count", -1) do
      delete sticker_url(@sticker), as: :json
    end

    assert_response :no_content
  end
end
