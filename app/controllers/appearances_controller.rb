class AppearancesController < ApplicationController
    def new
        @guests = Guest.all
        @episodes = Episode.all
        @appearance = Appearance.new
    end
end
