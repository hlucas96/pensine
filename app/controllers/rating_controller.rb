class RatingController < ApplicationController
  def vote
    Rating.create(quote_id: params['quote_id'], value: params['value'])
    redirect_back(fallback_location: root_path)
  end
end
