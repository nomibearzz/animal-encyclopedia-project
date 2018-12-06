class FavoriteAnimalsController < ApplicationController
  def new
    @favorite_animal = FavoriteAnimal.new
    redirect_to animal_path(@animal)
  end

  def create
    @favorite_animal = FavoriteAnimal.create(favorite_params)
    if @favorite_animal.save
      redirect_back(fallback_location: animals_path)
    end
  end

  private
  def favorite_params
    params.require(:favorite_animal).permit(:animal_id, :user_id)
  end
end
