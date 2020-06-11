class AppearancesController < ApplicationController
  def new
    flash.keep
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    if @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      #   byebug
      flash[:notice] = @appearance.errors.messages[:rating][0]
      redirect_to new_appearance_path
    end
  end

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end

# A user can fill out a form to create a new Appearance. They can:

# - Choose an existing guest from a select dropdown
# - Choose an existing episode from a select dropdown
# - Enter a numeric rating
# - Submit the form

# After submitting the form, the user should be redirected to the selected episode's show page.
