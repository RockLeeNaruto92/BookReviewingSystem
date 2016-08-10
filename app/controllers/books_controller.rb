class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
    @subjects = Subject.all
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:books).premit(:title, :author, :publish_date, :number_of_pages, :rating_score)
  end
end
