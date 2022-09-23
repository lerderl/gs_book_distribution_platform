class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end
   
  def create 
    @book = Book.new(params.require(:book).permit(:region, :price, :qty_allotted, :amt_allotted, :qty_paid, :amt_paid, :qty_bal, :amt_bal))
    if @book.save
      flash[:notice] = "Region was added successfully."
      redirect_to @book
    else
      render 'new'
    end
  end 
end
