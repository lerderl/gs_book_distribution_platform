class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def new
  end
   
  def create 
    @book = Book.new(params.require(:book).permit(:region, :price, :qty_allotted, :amt_allotted, :qty_paid, :amt_paid, :qty_bal, :amt_bal))
    @book.save
    redirect_to @book
  end 
end
