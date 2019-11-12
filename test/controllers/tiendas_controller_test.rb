require 'test_helper'

class TiendasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tiendaPlus_path
    assert_response :success
  end

end
