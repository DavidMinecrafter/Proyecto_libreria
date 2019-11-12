require 'test_helper'

class PagEstaticaControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Libreria"
  end
  
  test "should get login" do
    get login_path
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

  test "should get libManager" do
    get libManager_path
    assert_response :success
  end

  test "should get libPlus" do
    get libPlus_path
    assert_response :success
  end

  test "should get tiendaManager" do
    get tiendaManager_path
    assert_response :success
  end

  test "should get tiendaPlus" do
    get tiendaPlus_path
    assert_response :success
  end

end
