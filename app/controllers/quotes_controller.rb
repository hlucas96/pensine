class QuotesController < ApplicationController
  def new
  end

  def index
    @quotes = Quote.joins(chapter: :entity)
    @quotes_tab = [];
    @quotes.each do |q|
      obj = {quote: q, related_characters: RelatedCharacter.joins(:character).where(quote_id: q.id)}
      @quotes_tab.push obj
    end
  end

  def show
    @quote = Quote.joins(chapter: :entity).find(params[:id])
    @related_characters = RelatedCharacter.joins(:character).where(quote_id: params[:id])
    @quote_tab = [{quote: @quote, related_characters: @related_characters}]
  end
end
