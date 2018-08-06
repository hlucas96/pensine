class EntityController < ApplicationController
  def new
  end

  def show
    @entity = Entity.find(params['id'])

    @quotes = Quote.joins(chapter: :entity).where("entities.id = %s", params['id']).limit(20)
    @quotes_tab = [];
    @quotes.each do |q|
      obj = {quote: q,
            related_characters: RelatedCharacter.joins(:character).where(quote_id: q.id),
            rating: Rating.where(quote_id: q.id).average(:value)}
      @quotes_tab.push obj
    end
  end
end
