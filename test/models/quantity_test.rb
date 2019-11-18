require 'test_helper'

class QuantityTest < ActiveSupport::TestCase
  def setup
    @tienda = tiendas(:chida)
    @book = books(:pedro)
    @quantity = Quantity.new(quantity: 5, tienda_id: @tienda.id, book_id: @book.id)
  end
  
  test "should be valid" do
    assert @quantity.valid?
  end
end
