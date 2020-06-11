class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show 
    @guests = Guest.all
    @episode = Episode.find(params[:id])
  end
end
