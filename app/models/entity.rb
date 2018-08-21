# == Schema Information
#
# Table name: entities
#
#  id                  :integer          not null, primary key
#  title               :string
#  title_en            :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  poster_file_name    :string
#  poster_content_type :string
#  poster_file_size    :integer
#  poster_updated_at   :datetime
#

class Entity < ApplicationRecord
  has_many :chapter
  has_attached_file :poster
  validates_attachment_content_type :poster, content_type: /\Aimage/
end
