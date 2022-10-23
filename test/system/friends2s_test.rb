require "application_system_test_case"

class Friends2sTest < ApplicationSystemTestCase
  setup do
    @friends2 = friends2s(:one)
  end

  test "visiting the index" do
    visit friends2s_url
    assert_selector "h1", text: "Friends2s"
  end

  test "should create friends2" do
    visit friends2s_url
    click_on "New friends2"

    fill_in "Email", with: @friends2.email
    fill_in "First name", with: @friends2.first_name
    fill_in "Insta", with: @friends2.insta
    fill_in "Last name", with: @friends2.last_name
    fill_in "Phone", with: @friends2.phone
    fill_in "Reg num", with: @friends2.reg_num
    click_on "Create Friends2"

    assert_text "Friends2 was successfully created"
    click_on "Back"
  end

  test "should update Friends2" do
    visit friends2_url(@friends2)
    click_on "Edit this friends2", match: :first

    fill_in "Email", with: @friends2.email
    fill_in "First name", with: @friends2.first_name
    fill_in "Insta", with: @friends2.insta
    fill_in "Last name", with: @friends2.last_name
    fill_in "Phone", with: @friends2.phone
    fill_in "Reg num", with: @friends2.reg_num
    click_on "Update Friends2"

    assert_text "Friends2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Friends2" do
    visit friends2_url(@friends2)
    click_on "Destroy this friends2", match: :first

    assert_text "Friends2 was successfully destroyed"
  end
end
