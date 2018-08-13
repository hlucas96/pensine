class HomeController < QuotesController
  def index
    @quotes = Quote.joins(chapter: :entity).order(:chapter_id).limit(30)
    @quotes_tab = build_quotes(@quotes)

    @CharacterTop = RelatedCharacter.joins(:character).group(:character).order("count_related_characters_id desc").limit(12).count("related_characters.id")
    @Entities = Chapter.joins(:quote).joins(:entity).group(:entity).count("quotes.id")
  end
end
