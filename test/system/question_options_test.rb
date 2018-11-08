require "application_system_test_case"

class QuestionOptionsTest < ApplicationSystemTestCase
  setup do
    @question_option = question_options(:one)
  end

  test "visiting the index" do
    visit question_options_url
    assert_selector "h1", text: "Question Options"
  end

  test "creating a Question option" do
    visit question_options_url
    click_on "New Question Option"

    fill_in "Body", with: @question_option.body
    fill_in "Title", with: @question_option.title
    click_on "Create Question option"

    assert_text "Question option was successfully created"
    click_on "Back"
  end

  test "updating a Question option" do
    visit question_options_url
    click_on "Edit", match: :first

    fill_in "Body", with: @question_option.body
    fill_in "Title", with: @question_option.title
    click_on "Update Question option"

    assert_text "Question option was successfully updated"
    click_on "Back"
  end

  test "destroying a Question option" do
    visit question_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question option was successfully destroyed"
  end
end
