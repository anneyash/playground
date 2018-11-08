require "application_system_test_case"

class ChooseQuestionsTest < ApplicationSystemTestCase
  setup do
    @choose_question = choose_questions(:one)
  end

  test "visiting the index" do
    visit choose_questions_url
    assert_selector "h1", text: "Choose Questions"
  end

  test "creating a Choose question" do
    visit choose_questions_url
    click_on "New Choose Question"

    fill_in "Body", with: @choose_question.body
    fill_in "Title", with: @choose_question.title
    click_on "Create Choose question"

    assert_text "Choose question was successfully created"
    click_on "Back"
  end

  test "updating a Choose question" do
    visit choose_questions_url
    click_on "Edit", match: :first

    fill_in "Body", with: @choose_question.body
    fill_in "Title", with: @choose_question.title
    click_on "Update Choose question"

    assert_text "Choose question was successfully updated"
    click_on "Back"
  end

  test "destroying a Choose question" do
    visit choose_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Choose question was successfully destroyed"
  end
end
