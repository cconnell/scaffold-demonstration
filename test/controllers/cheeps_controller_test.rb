require 'test_helper'

class CheepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cheep = cheeps(:one)
  end

  test "should get index" do
    get cheeps_url
    assert_response :success
  end

  test "should get new" do
    get new_cheep_url
    assert_response :success
  end

  test "should create cheep" do
    assert_difference('Cheep.count') do
      post cheeps_url, params: { cheep: { content: @cheep.content, user_id: @cheep.user_id } }
    end

    assert_redirected_to cheep_url(Cheep.last)
  end

  test "should show cheep" do
    get cheep_url(@cheep)
    assert_response :success
  end

  test "should get edit" do
    get edit_cheep_url(@cheep)
    assert_response :success
  end

  test "should update cheep" do
    patch cheep_url(@cheep), params: { cheep: { content: @cheep.content, user_id: @cheep.user_id } }
    assert_redirected_to cheep_url(@cheep)
  end

  test "should destroy cheep" do
    assert_difference('Cheep.count', -1) do
      delete cheep_url(@cheep)
    end

    assert_redirected_to cheeps_url
  end
end
