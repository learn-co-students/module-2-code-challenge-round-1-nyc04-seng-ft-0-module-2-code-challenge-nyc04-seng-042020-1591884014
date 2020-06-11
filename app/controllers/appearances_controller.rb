class AppearancesController < ApplicationController

def index 
    @appearances = Appearance.all 
end 


end
