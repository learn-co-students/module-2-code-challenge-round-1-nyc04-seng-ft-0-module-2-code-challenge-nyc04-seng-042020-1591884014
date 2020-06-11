class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    ratings = @episode.appearances.collect { |a| a.rating }
    @avg_rating = ratings.sum(0) / ratings.size
    render :show
  end
end
