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
    @book = Book.new book_params
    if @book.save
      redirect_to :action => "index"
    else
      @subjects = Subject.all
      render :action => "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :id, :the_number_of_pages,:publish_date, :rating_score)
  end
end
