require "test_helper"

class SpecialUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @special_user = special_users(:one)
  end

  test "should get index" do
    get special_users_url
    assert_response :success
  end

  test "should get new" do
    get new_special_user_url
    assert_response :success
  end

  test "should create special_user" do
    assert_difference('SpecialUser.count') do
      post special_users_url, params: { special_user: { age: @special_user.age, description: @special_user.description, favorite_food: @special_user.favorite_food, name: @special_user.name, published: @special_user.published } }
    end

    assert_redirected_to special_user_url(SpecialUser.last)
  end

  test "should show special_user" do
    get special_user_url(@special_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_special_user_url(@special_user)
    assert_response :success
  end

  test "should update special_user" do
    patch special_user_url(@special_user), params: { special_user: { age: @special_user.age, description: @special_user.description, favorite_food: @special_user.favorite_food, name: @special_user.name, published: @special_user.published } }
    assert_redirected_to special_user_url(@special_user)
  end

  test "should destroy special_user" do
    assert_difference('SpecialUser.count', -1) do
      delete special_user_url(@special_user)
    end

    assert_redirected_to special_users_url
  end
end
