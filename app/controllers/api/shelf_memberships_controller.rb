class Api::ShelfMembershipsController < ApplicationController
  def create
    @shelf_membership = ShelfMembership.new(shelf_membership_params)
    if @shelf_membership.save
      render :show
    else
      render json: @shelf_membership.errors.full_messages, status: 401
    end
  end

  def destroy
    @shelf_membership = Shelf.find_by(shelf_membership_params)
    if @shelf_membership
      @shelf_membership.destroy
      render :show
    else
      render json: ["Book is not in this collection"], status: 404
    end
  end

  def shelf_membership_params
    params.require(:shelf_membership).permit(:shelf_id, :book_id)
  end
end
