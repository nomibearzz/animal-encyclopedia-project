class SaveAnimalsController < ApplicationController
  def new
    @save = SaveAnimal.new
    redirect_to user_path(@user)
  end
  def create
    @save = SaveAnimal.create(save_params)
    redirect_back(fallback_location: animals_path)
  end
  private
  def save_params
    params.require(:save_animal).permit(:user_id, :animal_id)
  end
end
