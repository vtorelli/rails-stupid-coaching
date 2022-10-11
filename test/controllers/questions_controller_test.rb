require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get questions_controller_url
    assert_response :success
  end
end
