require 'test_helper'

class StoryBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story_book = story_books(:one)
  end

  test "should get index" do
    get story_books_url
    assert_response :success
  end

  test "should get new" do
    get new_story_book_url
    assert_response :success
  end

  test "should create story_book" do
    assert_difference('StoryBook.count') do
      post story_books_url, params: { story_book: {  } }
    end

    assert_redirected_to story_book_url(StoryBook.last)
  end

  test "should show story_book" do
    get story_book_url(@story_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_story_book_url(@story_book)
    assert_response :success
  end

  test "should update story_book" do
    patch story_book_url(@story_book), params: { story_book: {  } }
    assert_redirected_to story_book_url(@story_book)
  end

  test "should destroy story_book" do
    assert_difference('StoryBook.count', -1) do
      delete story_book_url(@story_book)
    end

    assert_redirected_to story_books_url
  end
end
