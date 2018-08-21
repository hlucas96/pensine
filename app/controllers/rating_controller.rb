class RatingController < ApplicationController
  def vote
    test = Rating.where(ip: request.remote_ip)
    if test
      render(
        html: "<script>alert('Vous avez déjà voter pour cette citation!')</script>".html_safe,
        layout: 'application'
      )
      return
    end
    rating = Rating.create(quote_id: params['quote_id'], value: params['value'])
    if user_signed_in?
      rating.user_id = current_user.id
    else
      rating.ip = request.remote_ip
    end
    rating.save!
    redirect_back(fallback_location: root_path)
  end
end
