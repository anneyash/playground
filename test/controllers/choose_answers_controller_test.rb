require 'test_helper'

class ChooseAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choose_answer = choose_answers(:one)
  end

  test "should get index" do
    get choose_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_choose_answer_url
    assert_response :success
  end

  test "should create choose_answer" do
    assert_difference('ChooseAnswer.count') do
      post choose_answers_url, params: { choose_answer: { body: @choose_answer.body, title: @choose_answer.title } }
    end

    assert_redirected_to choose_answer_url(ChooseAnswer.last)
  end

  test "should show choose_answer" do
    get choose_answer_url(@choose_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_choose_answer_url(@choose_answer)
    assert_response :success
  end

  test "should update choose_answer" do
    patch choose_answer_url(@choose_answer), params: { choose_answer: { body: @choose_answer.body, title: @choose_answer.title } }
    assert_redirected_to choose_answer_url(@choose_answer)
  end

  test "should destroy choose_answer" do
    assert_difference('ChooseAnswer.count', -1) do
      delete choose_answer_url(@choose_answer)
    end

    assert_redirected_to choose_answers_url
  end
end
