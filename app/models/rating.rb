# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  quote_id   :integer
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rating < ApplicationRecord
  belongs_to :quote
end
