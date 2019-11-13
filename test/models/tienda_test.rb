require 'test_helper'

class TiendaTest < ActiveSupport::TestCase
  def setup
    @tienda = Tienda.new(codename: "Example", address: "Ruiz Cortines", phone: "81 9264 8354")
  end

  test "should be valid" do
    assert @tienda.valid?
  end
  
  test "codename addresses should be unique" do
    codename_tienda = @tienda.dup
    @tienda.save
    assert_not codename_tienda.valid?
  end
end
