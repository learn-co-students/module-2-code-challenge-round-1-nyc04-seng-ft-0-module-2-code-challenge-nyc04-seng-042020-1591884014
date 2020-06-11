class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    # @appearance = Appearance.find_by(guest_id: params[:id])
  end

end
