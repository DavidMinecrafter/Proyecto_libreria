require 'test_helper'

class QuantityTest < ActiveSupport::TestCase
  def setup
    @tienda = tiendas(:chida)
    @book = books(:pedro)
    @quantity = @book.quantities.build(tienda_id: @tienda.id, quantity: 5)
  end
  
  test "should be valid" do
    assert @quantity.valid?
  end
  
end
