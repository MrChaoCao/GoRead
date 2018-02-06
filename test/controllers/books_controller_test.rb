require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  def show
    @book = Book.find_by(id: params[:id])

    if @book.nil?
      render :json ["Book not found"], status: 404
    end
  end

  def index
    @books = Book.all
  end
end
