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
  end
  
end
