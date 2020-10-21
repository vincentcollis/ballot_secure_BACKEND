require 'test_helper'

class BallotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ballot = ballots(:one)
  end

  test "should get index" do
    get ballots_url, as: :json
    assert_response :success
  end

  test "should create ballot" do
    assert_difference('Ballot.count') do
      post ballots_url, params: { ballot: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show ballot" do
    get ballot_url(@ballot), as: :json
    assert_response :success
  end

  test "should update ballot" do
    patch ballot_url(@ballot), params: { ballot: {  } }, as: :json
    assert_response 200
  end

  test "should destroy ballot" do
    assert_difference('Ballot.count', -1) do
      delete ballot_url(@ballot), as: :json
    end

    assert_response 204
  end
end
