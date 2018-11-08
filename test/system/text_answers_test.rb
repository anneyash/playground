require "application_system_test_case"

class TextAnswersTest < ApplicationSystemTestCase
  setup do
    @text_answer = text_answers(:one)
  end

  test "visiting the index" do
    visit text_answers_url
    assert_selector "h1", text: "Text Answers"
  end

  test "creating a Text answer" do
    visit text_answers_url
    click_on "New Text Answer"

    fill_in "Body", with: @text_answer.body
    fill_in "Title", with: @text_answer.title
    click_on "Create Text answer"

    assert_text "Text answer was successfully created"
    click_on "Back"
  end

  test "updating a Text answer" do
    visit text_answers_url
    click_on "Edit", match: :first

    fill_in "Body", with: @text_answer.body
    fill_in "Title", with: @text_answer.title
    click_on "Update Text answer"

    assert_text "Text answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Text answer" do
    visit text_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Text answer was successfully destroyed"
  end
end
