class CharacterController < ApplicationController

  def create
    @character = Character.create(character_params)
  end

  def search
    if params['q'].present?
      @characters = Character.where(["name LIKE %?%", params['q']])
      return @characters.first[:name]
    end

  end

  def show
    @character = Character.find(params['id'])
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def character_params
    params.require(:character).permit(:avatar)
  end
end
