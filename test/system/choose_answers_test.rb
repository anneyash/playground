require "application_system_test_case"

class ChooseAnswersTest < ApplicationSystemTestCase
  setup do
    @choose_answer = choose_answers(:one)
  end

  test "visiting the index" do
    visit choose_answers_url
    assert_selector "h1", text: "Choose Answers"
  end

  test "creating a Choose answer" do
    visit choose_answers_url
    click_on "New Choose Answer"

    fill_in "Body", with: @choose_answer.body
    fill_in "Title", with: @choose_answer.title
    click_on "Create Choose answer"

    assert_text "Choose answer was successfully created"
    click_on "Back"
  end

  test "updating a Choose answer" do
    visit choose_answers_url
    click_on "Edit", match: :first

    fill_in "Body", with: @choose_answer.body
    fill_in "Title", with: @choose_answer.title
    click_on "Update Choose answer"

    assert_text "Choose answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Choose answer" do
    visit choose_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Choose answer was successfully destroyed"
  end
end
