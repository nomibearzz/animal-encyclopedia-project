class FavoriteAnimalsController < ApplicationController
  def new
    @favorite_animal = FavoriteAnimal.new
  end

  def create
    @favorite_animal = FavoriteAnimal.create(favorite_params)
    if @favorite_animal.save
      redirect_to animals_path
    end
  end

  private
  def favorite_params
    params.require(:favorite_animal).permit(:animal_id, :user_id)
  end
end
