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

require 'test_helper'

class EntityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
