require 'test_helper'

class RegisteredVotersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registered_voter = registered_voters(:one)
  end

  test "should get index" do
    get registered_voters_url, as: :json
    assert_response :success
  end

  test "should create registered_voter" do
    assert_difference('RegisteredVoter.count') do
      post registered_voters_url, params: { registered_voter: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show registered_voter" do
    get registered_voter_url(@registered_voter), as: :json
    assert_response :success
  end

  test "should update registered_voter" do
    patch registered_voter_url(@registered_voter), params: { registered_voter: {  } }, as: :json
    assert_response 200
  end

  test "should destroy registered_voter" do
    assert_difference('RegisteredVoter.count', -1) do
      delete registered_voter_url(@registered_voter), as: :json
    end

    assert_response 204
  end
end
