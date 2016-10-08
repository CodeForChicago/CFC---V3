require 'test_helper'

class Video2tagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video2tag = video2tags(:one)
  end

  test "should get index" do
    get video2tags_url
    assert_response :success
  end

  test "should get new" do
    get new_video2tag_url
    assert_response :success
  end

  test "should create video2tag" do
    assert_difference('Video2tag.count') do
      post video2tags_url, params: { video2tag: { tag_id: @video2tag.tag_id, video_id: @video2tag.video_id } }
    end

    assert_redirected_to video2tag_url(Video2tag.last)
  end

  test "should show video2tag" do
    get video2tag_url(@video2tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_video2tag_url(@video2tag)
    assert_response :success
  end

  test "should update video2tag" do
    patch video2tag_url(@video2tag), params: { video2tag: { tag_id: @video2tag.tag_id, video_id: @video2tag.video_id } }
    assert_redirected_to video2tag_url(@video2tag)
  end

  test "should destroy video2tag" do
    assert_difference('Video2tag.count', -1) do
      delete video2tag_url(@video2tag)
    end

    assert_redirected_to video2tags_url
  end
end
