require 'test_helper'

class PagEstaticaControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Libreria"
  end
  
  test "should get login" do
    get pag_estatica_login_url
    assert_response :success
  end

  test "should get home" do
    get pag_estatica_home_url
    assert_response :success
  end

  test "should get show" do
    get pag_estatica_show_url
    assert_response :success
  end

  test "should get libManager" do
    get pag_estatica_libManager_url
    assert_response :success
  end

  test "should get libPlus" do
    get pag_estatica_libPlus_url
    assert_response :success
  end

  test "should get tiendaManager" do
    get pag_estatica_tiendaManager_url
    assert_response :success
  end

  test "should get tiendaPlus" do
    get pag_estatica_tiendaPlus_url
    assert_response :success
  end

end
