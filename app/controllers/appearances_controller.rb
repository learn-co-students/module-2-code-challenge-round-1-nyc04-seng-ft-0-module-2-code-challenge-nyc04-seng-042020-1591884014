class AppearancesController < ApplicationController

def new
    @appearance = Appearance.new
end

def create
    @appearance = Appearance.create

    # redirect_to episode_path(appearance.episode_id) ## redirect to selected show but not working yet 
end

def edit

end

def update

end

def show

end

def destroy

end

end
  