class BookesController < ApplicationController
  def index
    @bookes =Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end

  def edit
  end

  def create
   @book = Book.new(books_params)
    if @book.save
      redirect_to booke_path(@book)
      flash[:success] = "Book was successfully created."
    else
    @bookes = Book.all
      render :index
    end
  end


private
  def books_params
    params.permit(:title, :body)
  end

end
