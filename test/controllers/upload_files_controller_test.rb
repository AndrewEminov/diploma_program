require 'test_helper'

class UploadFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upload_file = upload_files(:one)
  end

  test "should get index" do
    get upload_files_url
    assert_response :success
  end

  test "should get new" do
    get new_upload_file_url
    assert_response :success
  end

  test "should create upload_file" do
    assert_difference('UploadFile.count') do
      post upload_files_url, params: { upload_file: { cover_letter: @upload_file.cover_letter, title: @upload_file.title } }
    end

    assert_redirected_to upload_file_url(UploadFile.last)
  end

  test "should show upload_file" do
    get upload_file_url(@upload_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_upload_file_url(@upload_file)
    assert_response :success
  end

  test "should update upload_file" do
    patch upload_file_url(@upload_file), params: { upload_file: { cover_letter: @upload_file.cover_letter, title: @upload_file.title } }
    assert_redirected_to upload_file_url(@upload_file)
  end

  test "should destroy upload_file" do
    assert_difference('UploadFile.count', -1) do
      delete upload_file_url(@upload_file)
    end

    assert_redirected_to upload_files_url
  end
end
