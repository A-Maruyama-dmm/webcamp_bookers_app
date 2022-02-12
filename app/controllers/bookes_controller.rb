class BookesController < ApplicationController
  def index
    @bookes =Book.all
  end

  def show
  end

  def new
    @book=Book.new
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
