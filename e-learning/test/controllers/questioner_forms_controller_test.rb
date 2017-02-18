require 'test_helper'

class QuestionerFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questioner_form = questioner_forms(:one)
  end

  test "should get index" do
    get questioner_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_questioner_form_url
    assert_response :success
  end

  test "should create questioner_form" do
    assert_difference('QuestionerForm.count') do
      post questioner_forms_url, params: { questioner_form: { answer: @questioner_form.answer, question: @questioner_form.question, user: @questioner_form.user } }
    end

    assert_redirected_to questioner_form_url(QuestionerForm.last)
  end

  test "should show questioner_form" do
    get questioner_form_url(@questioner_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_questioner_form_url(@questioner_form)
    assert_response :success
  end

  test "should update questioner_form" do
    patch questioner_form_url(@questioner_form), params: { questioner_form: { answer: @questioner_form.answer, question: @questioner_form.question, user: @questioner_form.user } }
    assert_redirected_to questioner_form_url(@questioner_form)
  end

  test "should destroy questioner_form" do
    assert_difference('QuestionerForm.count', -1) do
      delete questioner_form_url(@questioner_form)
    end

    assert_redirected_to questioner_forms_url
  end
end
