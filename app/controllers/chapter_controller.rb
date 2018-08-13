class ChapterController < EntityController
  def new
  end
  def show
    @chapter = Chapter.find(params['id'])

    @quotes = Quote.joins(chapter: :entity).order(:chapter_id).where("chapters.id = %s", params['id']).limit(20)
    @quotes_tab = build_quotes(@quotes)

    @chapters_tab = build_chapters(@chapter.entity, @chapter.chapter_id)
  end
end
