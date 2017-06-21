require 'test_helper'

class BlogEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_entry = blog_entries(:one)
  end

  test "should get index" do
    get blog_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_entry_url
    assert_response :success
  end

  test "should create blog_entry" do
    assert_difference('BlogEntry.count') do
      post blog_entries_url, params: { blog_entry: { content: @blog_entry.content, image: @blog_entry.image, teaser: @blog_entry.teaser, title: @blog_entry.title } }
    end

    assert_redirected_to blog_entry_url(BlogEntry.last)
  end

  test "should show blog_entry" do
    get blog_entry_url(@blog_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_entry_url(@blog_entry)
    assert_response :success
  end

  test "should update blog_entry" do
    patch blog_entry_url(@blog_entry), params: { blog_entry: { content: @blog_entry.content, image: @blog_entry.image, teaser: @blog_entry.teaser, title: @blog_entry.title } }
    assert_redirected_to blog_entry_url(@blog_entry)
  end

  test "should destroy blog_entry" do
    assert_difference('BlogEntry.count', -1) do
      delete blog_entry_url(@blog_entry)
    end

    assert_redirected_to blog_entries_url
  end
end
