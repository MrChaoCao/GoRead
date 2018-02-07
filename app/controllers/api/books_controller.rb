class Api::BooksController < ApplicationController
  def show
    @book = Book.find_by(id: params[:id])
  end

  def index
    @book = Book.all
  end
end
