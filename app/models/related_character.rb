# == Schema Information
#
# Table name: related_characters
#
#  id           :integer          not null, primary key
#  quote_id     :integer
#  character_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RelatedCharacter < ApplicationRecord
  belongs_to :character
  belongs_to :quote
end
