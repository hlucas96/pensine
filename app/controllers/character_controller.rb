class CharacterController < QuotesController

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

    @quotes = Quote.joins(chapter: :entity).order(:chapter_id).joins(:related_character).where("related_characters.character_id = %s", params['id']).limit(20)
    @quotes_tab = build_quotes(@quotes)
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def character_params
    params.require(:character).permit(:avatar)
  end
end
