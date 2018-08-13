# == Schema Information
#
# Table name: entities
#
#  id         :integer          not null, primary key
#  title      :string
#  title_en   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Entity < ApplicationRecord
  has_many :chapter
  has_attached_file :poster
  validates_attachment_content_type :poster, content_type: /\Aimage/
end
