require 'test_helper'

class RootControllerTest < ActionController::TestCase
  test "should get mymethod" do
    get :mymethod
    assert_response :success
  end

end
