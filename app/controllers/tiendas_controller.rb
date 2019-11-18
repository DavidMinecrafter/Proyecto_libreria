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
  
  def edit
    @tienda = Tienda.find(params[:id])
  end
  
  def update
    @tienda = Tienda.find(params[:id])
    if @tienda.update(tienda_params)
      flash[:success] = "Datos actualizados"
      redirect_to @tienda
    else
      render 'edit'
    end
  end
    
  def index
    @tiendas = Tienda.all
  end
  
  def destroy
    Tienda.find(params[:id]).destroy
    flash[:success] = "Tienda eliminada"
    redirect_to tiendas_url
  end
  
  private
  
    def tienda_params
      params.require(:tienda).permit(:codename, :address, :phone)
    end
  
end
