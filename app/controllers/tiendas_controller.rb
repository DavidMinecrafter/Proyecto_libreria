class TiendasController < ApplicationController
  
  def show
    @tienda = Tienda.find(params[:id])
  end
  
  def new
    @tienda = Tienda.new
  end
  
  def create
    @tienda = Tienda.new(tienda_params)
    if @tienda.save
      flash[:sucess] = "Tienda agregada"
      redirect_to @tienda
    else
      render 'new'
    end
  end
  
  private
  
    def tienda_params
      params.require(:tienda).permit(:codename, :address, :phone)
    end
  
end
