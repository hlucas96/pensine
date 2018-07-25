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

    @quotes = Quote.joins(chapter: :entity).joins(:related_character).where("related_characters.character_id = %s", params['id']).limit(20)
    @quotes_tab = [];
    @quotes.each do |q|
      obj = {quote: q,
            related_characters: RelatedCharacter.joins(:character).where(quote_id: q.id),
            rating: Rating.where(quote_id: q.id).average(:value)}
      @quotes_tab.push obj
    end
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def character_params
    params.require(:character).permit(:avatar)
  end
end
