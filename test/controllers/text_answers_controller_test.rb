require 'test_helper'

class TextAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_answer = text_answers(:one)
  end

  test "should get index" do
    get text_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_text_answer_url
    assert_response :success
  end

  test "should create text_answer" do
    assert_difference('TextAnswer.count') do
      post text_answers_url, params: { text_answer: { body: @text_answer.body, title: @text_answer.title } }
    end

    assert_redirected_to text_answer_url(TextAnswer.last)
  end

  test "should show text_answer" do
    get text_answer_url(@text_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_answer_url(@text_answer)
    assert_response :success
  end

  test "should update text_answer" do
    patch text_answer_url(@text_answer), params: { text_answer: { body: @text_answer.body, title: @text_answer.title } }
    assert_redirected_to text_answer_url(@text_answer)
  end

  test "should destroy text_answer" do
    assert_difference('TextAnswer.count', -1) do
      delete text_answer_url(@text_answer)
    end

    assert_redirected_to text_answers_url
  end
end
