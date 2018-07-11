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

require 'test_helper'

class RelatedCharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
