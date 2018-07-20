class RatingController < ApplicationController
  def vote
    Rating.create(quote_id: params['quote_id'], value: params['value'])
    redirect_to quote_path(params['quote_id'])
  end
end
