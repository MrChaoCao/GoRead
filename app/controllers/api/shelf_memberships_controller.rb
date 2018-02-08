class Api::ShelfMembershipsController < ApplicationController
  def create
    @shelf_membership = ShelfMembership.new(
      shelf_id: params[:shelf_id],
      book_id: params[:book_id]
    )

    if @shelf_membership.save
      @shelf = @shelf_membership.shelf
      render 'api/shelves/show'
    else
      render json: @shelf_membership.errors.full_messages, status: 401
    end
  end

  def destroy
    @shelf_membership = ShelfMembership.find_by(
      shelf_id: params[:shelf_id],
      book_id: params[:book_id]
    )
    if @shelf_membership
      @shelf_membership.destroy
      @shelf = @shelf_membership.shelf
      render 'api/shelves/show'
    else
      render json: ["Book is not in this collection"], status: 404
    end
  end
end
