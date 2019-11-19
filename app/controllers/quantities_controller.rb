class QuantitiesController < ApplicationController
  def create(tienda)
    @quantity = Quantity.new(quantity_params)
    flash[:sucess] = "Relacion creada"
    redirect_to tiendas_url
  end
  
  def create(book)
    @quantity = Quantity.new(quantity_params)
    flash[:sucess] = "Relacion creada"
    redirect_to books_url
  end
  
  def destroy(tienda)
    Quantity.find(params[:id]).destroy
    flash[:success] = "Relacion destruida"
    redirect_to tiendas_url
  end
  
  def destroy(book)
    Quantity.find(params[:id]).destroy
    flash[:success] = "Relacion destruida"
    redirect_to books_url
  end
  
  def edit
  end
  
  def index
    @quantities = Quantity.search(params[:search])
  end
  
  private
    def quantity_params
      params.require(:quantity).permit(:book_id, :tienda_id, :quantity, :search)
    end
end
