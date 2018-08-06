class HomeController < ApplicationController
  def index
    @quotes = Quote.joins(chapter: :entity).limit(30)
    @quotes_tab = [];
    @quotes.each do |q|
      obj = {quote: q,
            related_characters: RelatedCharacter.joins(:character).where(quote_id: q.id),
            rating: Rating.where(quote_id: q.id).average(:value)}
      @quotes_tab.push obj
    end

    @CharacterTop = RelatedCharacter.joins(:character).group(:character).order("count_related_characters_id desc").limit(12).count("related_characters.id")
    @Entities = Chapter.joins(:quote).joins(:entity).group(:entity).count("quotes.id")
  end
end
