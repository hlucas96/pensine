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

require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
