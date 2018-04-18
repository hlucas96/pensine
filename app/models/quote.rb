# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  content    :string
#  content_en :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quote < ApplicationRecord
  belongs_to :chapter

end
