class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update]

  def show
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end
   
  def create 
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Region was added successfully."
      redirect_to @book
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Region was updated successfully."
      redirect_to @book
    else
      render 'edit'
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:region, :price, :qty_allotted, :amt_allotted, :qty_paid, :amt_paid, :qty_bal, :amt_bal)
  end
end
