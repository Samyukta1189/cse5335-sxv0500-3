require 'test_helper'

class RetrieveControllerTest < ActionController::TestCase
  test "should get records" do
    get :records
    assert_response :success
  end

end
