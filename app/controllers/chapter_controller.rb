class ChapterController < QuotesController
  def new
  end
  def show
    @chapter = Chapter.find(params['id'])

    @quotes = Quote.joins(chapter: :entity).where("chapters.id = %s", params['id']).limit(20)
    @quotes_tab = build_quotes(@quotes)
  end
end
