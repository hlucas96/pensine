class RelatedCharacter < ApplicationRecord
  belongs_to :character
  belongs_to :quote
end
