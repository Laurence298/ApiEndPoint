require "test_helper"

class Api::V1::BookControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get api_v1_book_name:string_url
    assert_response :success
  end
end
