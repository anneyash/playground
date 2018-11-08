require 'test_helper'

class ChooseQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choose_question = choose_questions(:one)
  end

  test "should get index" do
    get choose_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_choose_question_url
    assert_response :success
  end

  test "should create choose_question" do
    assert_difference('ChooseQuestion.count') do
      post choose_questions_url, params: { choose_question: { body: @choose_question.body, title: @choose_question.title } }
    end

    assert_redirected_to choose_question_url(ChooseQuestion.last)
  end

  test "should show choose_question" do
    get choose_question_url(@choose_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_choose_question_url(@choose_question)
    assert_response :success
  end

  test "should update choose_question" do
    patch choose_question_url(@choose_question), params: { choose_question: { body: @choose_question.body, title: @choose_question.title } }
    assert_redirected_to choose_question_url(@choose_question)
  end

  test "should destroy choose_question" do
    assert_difference('ChooseQuestion.count', -1) do
      delete choose_question_url(@choose_question)
    end

    assert_redirected_to choose_questions_url
  end
end
