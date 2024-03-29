# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  content    :string
#  content_en :string
#  chapter_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quote < ApplicationRecord
  belongs_to :chapter
  has_many :related_character

  acts_as_commontable dependent: :destroy
end
