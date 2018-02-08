class Api::ShelvesController < ApplicationController
  def index
    @shelves = current_user.shelves
  end

  def show
    @shelf = Shelf.find(params[:id])
  end

  def create
    @shelf = Shelf.new(shelf_params)
    if @shelf.save
      render "api/:user_id/shelves"
    else
      render json: @shelf.errors.full_messages, status 422
    end
  end

  def destroy
    @shelf = Shelf.find(params[:id])
    @bookshelf.destroy!
    render "api/:user_id/shelves"
  end

  def update
    @shelf = Shelf.find(params[:id])
    if @shelf.update(shelf_params)
      render "api/:user_id/shelves"
    else
      render json: @shelf.errors.full_messages, status 422
    end
  end

  def shelf_params
    params.require(:shelf).permit(:shelf_title, :user_id)
  end
end
