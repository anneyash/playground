require "application_system_test_case"

class TextQuestionsTest < ApplicationSystemTestCase
  setup do
    @text_question = text_questions(:one)
  end

  test "visiting the index" do
    visit text_questions_url
    assert_selector "h1", text: "Text Questions"
  end

  test "creating a Text question" do
    visit text_questions_url
    click_on "New Text Question"

    fill_in "Body", with: @text_question.body
    fill_in "Title", with: @text_question.title
    click_on "Create Text question"

    assert_text "Text question was successfully created"
    click_on "Back"
  end

  test "updating a Text question" do
    visit text_questions_url
    click_on "Edit", match: :first

    fill_in "Body", with: @text_question.body
    fill_in "Title", with: @text_question.title
    click_on "Update Text question"

    assert_text "Text question was successfully updated"
    click_on "Back"
  end

  test "destroying a Text question" do
    visit text_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Text question was successfully destroyed"
  end
end
