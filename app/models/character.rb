# == Schema Information
#
# Table name: characters
#
#  id                  :integer          not null, primary key
#  name                :string
#  name_en             :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Character < ApplicationRecord
  has_attached_file :avatar
  # , default_url: "/images/caracters/dursley_vernon.png"
  validates_attachment_content_type :avatar, content_type: ["image/png"]
end
