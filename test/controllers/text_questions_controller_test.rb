require 'test_helper'

class TextQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_question = text_questions(:one)
  end

  test "should get index" do
    get text_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_text_question_url
    assert_response :success
  end

  test "should create text_question" do
    assert_difference('TextQuestion.count') do
      post text_questions_url, params: { text_question: { body: @text_question.body, title: @text_question.title } }
    end

    assert_redirected_to text_question_url(TextQuestion.last)
  end

  test "should show text_question" do
    get text_question_url(@text_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_question_url(@text_question)
    assert_response :success
  end

  test "should update text_question" do
    patch text_question_url(@text_question), params: { text_question: { body: @text_question.body, title: @text_question.title } }
    assert_redirected_to text_question_url(@text_question)
  end

  test "should destroy text_question" do
    assert_difference('TextQuestion.count', -1) do
      delete text_question_url(@text_question)
    end

    assert_redirected_to text_questions_url
  end
end
