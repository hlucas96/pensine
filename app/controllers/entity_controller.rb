class EntityController < QuotesController
  def new
  end

  def show
    @entity = Entity.find(params['id'])

    @quotes = Quote.joins(chapter: :entity).order(:chapter_id).where("entities.id = %s", params['id']).limit(20)
    @quotes_tab = build_quotes(@quotes)

    @chapters_tab = build_chapters(@entity, nil)
  end
end

def build_chapters(entity, current_id)
  @chapters = Chapter.where(entity: entity)
  @chapters_tab = [];
  @chapters.each do |c|
    obj = {chapter: c,
        pourcent: (1.0 / @chapters.length * 100),
        is_current: (c.chapter_id == current_id)}
    @chapters_tab.push obj
  end
  return @chapters_tab
end
