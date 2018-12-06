class AnimalsController < ApplicationController
  before_action :find_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show
    @user = current_user
    @comment = Comment.new
  end

  def new
    @animal = Animal.new
    @user = current_user

    if @user.admin == nil
      redirect_to animals_path
    end
  end

  def create
    @animal = Animal.create(animal_params)
    redirect_to @animal
  end

  def edit
    @user = current_user

    if @user.admin == nil
      redirect_to animals_path
    end
  end

  def update
    @animal.updated
    redirect_to @animal
  end

  def destroy
    @animal.destroy
    redirect_to animals_path
  end

  private
  def find_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :scientific_name, :family_name, :classification, :diet, :life_span, :habitat, :photo)
  end
end
