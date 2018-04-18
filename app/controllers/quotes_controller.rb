class QuotesController < ApplicationController
  def new
  end

  def index
    @quotes = Quote.joins(chapter: :entity)
  end
end
