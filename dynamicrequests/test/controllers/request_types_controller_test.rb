require "test_helper"

class RequestTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_type = request_types(:one)
  end

  test "should get index" do
    get request_types_url
    assert_response :success
  end

  test "should get new" do
    get new_request_type_url
    assert_response :success
  end

  test "should create request_type" do
    assert_difference('RequestType.count') do
      post request_types_url, params: { request_type: { name: @request_type.name } }
    end

    assert_redirected_to request_type_url(RequestType.last)
  end

  test "should show request_type" do
    get request_type_url(@request_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_type_url(@request_type)
    assert_response :success
  end

  test "should update request_type" do
    patch request_type_url(@request_type), params: { request_type: { name: @request_type.name } }
    assert_redirected_to request_type_url(@request_type)
  end

  test "should destroy request_type" do
    assert_difference('RequestType.count', -1) do
      delete request_type_url(@request_type)
    end

    assert_redirected_to request_types_url
  end
end
