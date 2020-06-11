class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @order_episodes = @guest.episodes.order("rating DESC")
    # byebug
  end
end
