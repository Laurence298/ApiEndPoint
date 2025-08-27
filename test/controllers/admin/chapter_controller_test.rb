require "test_helper"

class Admin::ChapterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_chapter_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_chapter_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_chapter_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_chapter_edit_url
    assert_response :success
  end
end
