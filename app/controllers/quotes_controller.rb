class QuotesController < ApplicationController
  autocomplete :character, :name, full: true

  def new
    @characters = Character.all.collect {|c| [c.name]}
    if params['quote'].present?
      quote_created = Quote.create content: params['quote']['content'],
                                    content_en: params['quote']['content_en']
      quote_created.chapter = Chapter.where({chapter_id: params['quote']['chapter_id'],
                                              entity_id: params['quote']['entity_id']}).first
      quote_created.save!
      params[:quote][:characters_list].each do |c_id|
        if !c_id.blank?
          character = Character.where(id: c_id).first
          rc_created = RelatedCharacter.create quote: quote_created, character: character
          rc_created.save!
        end
      end
    end
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
