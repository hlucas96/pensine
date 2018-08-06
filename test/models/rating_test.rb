# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  quote_id   :integer
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ip         :string
#

require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
