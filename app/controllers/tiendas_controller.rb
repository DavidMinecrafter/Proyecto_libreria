class TiendasController < ApplicationController
  
  def show
    @tienda = Tienda.find(params[:id])
  end
  
  def new
  end
end
