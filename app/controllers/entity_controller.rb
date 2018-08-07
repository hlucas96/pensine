class EntityController < QuotesController
  def new
  end

  def show
    @entity = Entity.find(params['id'])

    @quotes = Quote.joins(chapter: :entity).where("entities.id = %s", params['id']).limit(20)
    @quotes_tab = build_quotes(@quotes)
    @chapters = Chapter.where(entity: @entity)
  end
end
