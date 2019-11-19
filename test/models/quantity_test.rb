require 'test_helper'

class QuantityTest < ActiveSupport::TestCase
  def setup
    @tienda = tiendas(:chida)
    @book = books(:pedro)
    @quantity = Quantity.new(book_id: @book.id, tienda_id: @tienda.id, quantity: 5)
  end
  
  test "should be valid" do
    assert @quantity.valid?
  end
  
  test "should not permit that only one relationship exists" do
    @quantity.tienda_id = nil
    @quantity.book_id = 1
    assert_not @quantity.valid?
  end
  
  test "check that relations are created" do
    chido = tiendas(:chida)
    pedro = books(:pedro)
    assert_not chido.connected?(pedro)
    
  end

end
