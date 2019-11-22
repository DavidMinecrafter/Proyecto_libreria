class BooksController < ApplicationController
  
  def show
    @book = Book.find(params[:id])
    @tienda= Tienda.find(params[:id])
    @quantities = @tienda.quantities.paginate(page: params[:page])
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:sucess] = "Libro agregado"
      redirect_to @book
    else
      render 'new'
    end
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = "Datos actualizados"
      redirect_to @book
    else
      render 'edit'
    end
  end
    
  def index
    @books = Book.all
  end
  
  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Libro eliminado"
    redirect_to books_url
  end
  
  private
  
    def book_params
      params.require(:book).permit(:title, :author, :year)
    end
  
end
