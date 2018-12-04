class AnimalsController < ApplicationController
  before_action :find_animal, only: [:show]

  def index
      @animals = Animal.all
  end

  def show

  end

  private
  def find_animal
    @animal = Animal.find(params[:id])
  end
end
