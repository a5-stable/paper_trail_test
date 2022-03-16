require "application_system_test_case"

class SpecialUsersTest < ApplicationSystemTestCase
  setup do
    @special_user = special_users(:one)
  end

  test "visiting the index" do
    visit special_users_url
    assert_selector "h1", text: "Special Users"
  end

  test "creating a Special user" do
    visit special_users_url
    click_on "New Special User"

    fill_in "Age", with: @special_user.age
    fill_in "Description", with: @special_user.description
    fill_in "Favorite food", with: @special_user.favorite_food
    fill_in "Name", with: @special_user.name
    check "Published" if @special_user.published
    click_on "Create Special user"

    assert_text "Special user was successfully created"
    click_on "Back"
  end

  test "updating a Special user" do
    visit special_users_url
    click_on "Edit", match: :first

    fill_in "Age", with: @special_user.age
    fill_in "Description", with: @special_user.description
    fill_in "Favorite food", with: @special_user.favorite_food
    fill_in "Name", with: @special_user.name
    check "Published" if @special_user.published
    click_on "Update Special user"

    assert_text "Special user was successfully updated"
    click_on "Back"
  end

  test "destroying a Special user" do
    visit special_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Special user was successfully destroyed"
  end
end
