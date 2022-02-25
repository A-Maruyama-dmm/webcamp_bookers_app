class BookesController < ApplicationController
  def index
    @bookes =Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
   @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(bookes_params)
      redirect_to booke_path(@book)
      flash[:success] = "Book was successfully created."
    else
    @bookes = Book.all
      render :edit
    end
  end

  def create
   @book = Book.new(bookes_params)
    if @book.save
      redirect_to bookes_path(@book)
      flash[:success] = "Book was successfully created."
    else
    @bookes = Book.all
      render :index
    end
  end

  def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to bookes_path
  end


private
  def bookes_params
    params.permit(:title, :body)
  end

end
