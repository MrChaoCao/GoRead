class Api::BooksController < ApplicationController
  def show
    @book = Book.find_by(id: params[:id])
  end

  def index
    @books = Book.all
  end
end
