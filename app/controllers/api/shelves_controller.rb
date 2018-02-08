class Api::ShelvesController < ApplicationController
  def index
    @shelves = current_user.shelves
  end

  def show
    @shelf = current_user.shelves.find(params[:id])
  end

  def create
    @shelf = Shelf.new(shelf_params)
    @shelf.user_id = current_user.id
    if @shelf.save
      render "api/shelves/show"
    else
      render json: @shelf.errors.full_messages, status: 422
    end
  end

  def destroy
    @shelf = Shelf.find(params[:id])
    if @bookshelf.destroy
      render "api/shelves/show"
    else
      render json: @shelf.errors.full_messages, status: 404
    end
  end

  def update
    @shelf = Shelf.find(params[:id])
    if @shelf.update(shelf_params)
      render "api/shelves/show"
    else
      render json: @shelf.errors.full_messages, status: 422
    end
  end

private
  def shelf_params
    params.require(:shelf).permit(:name)
  end
end
