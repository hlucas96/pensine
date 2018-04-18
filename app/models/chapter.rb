# == Schema Information
#
# Table name: chapters
#
#  id         :integer          not null, primary key
#  chapter_id :integer
#  title      :string
#  title_en   :string
#  summary    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Chapter < ApplicationRecord
  attr_accessible :title, :title_en, :chapter_id, :summary
end
