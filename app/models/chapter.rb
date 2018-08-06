# == Schema Information
#
# Table name: chapters
#
#  id         :integer          not null, primary key
#  chapter_id :integer
#  title      :string
#  title_en   :string
#  summary    :string
#  entity_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Chapter < ApplicationRecord
  belongs_to :entity
  has_many :quote
end
