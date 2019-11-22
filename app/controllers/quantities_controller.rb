class QuantitiesController < ApplicationController
  def new
    @quantity = Quantity.new
  end
  
  def create
    @quantity = Quantity.create(quantity_params)
    if @quantity.save
      flash[:success] = "Relacion creada"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    Quantity.find(params[:id]).destroy
    flash[:success] = "Relacion destruida"
    redirect_to root_path
  end
  
  def edit
    @quantity = Quantity.find(params[:id])
  end
  
  def update
    @quantity = Quantity.find(params[:id])
    if @quantity.update(quantity_params)
      flash[:success] = "Datos actualizados"
      redirect_to root_path
    else
      render 'edit'
    end
  end
  
  def index
    @quantities = Quantity.search(params[:search])
  end
  
  private
    def quantity_params
      params.require(:quantity).permit(:book_id, :tienda_id, :quantity, :search)
    end
end
