require 'test_helper'

class QuestionnairesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get questionnaires_top_url
    assert_response :success
  end

  test "should get about" do
    get questionnaires_about_url
    assert_response :success
  end

  test "should get create" do
    get questionnaires_create_url
    assert_response :success
  end

  test "should get confirm" do
    get questionnaires_confirm_url
    assert_response :success
  end

  test "should get thanks" do
    get questionnaires_thanks_url
    assert_response :success
  end

end
