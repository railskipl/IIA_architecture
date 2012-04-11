require 'test_helper'

class Admin::PicturesControllerTest < ActionController::TestCase
  test "should get title:string" do
    get :title:string
    assert_response :success
  end

end
