# == Schema Information
#
# Table name: literatures
#
#  id                :integer          not null, primary key
#  title             :string
#  author            :string
#  link              :string
#  publishing_year   :datetime
#  work_programms_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_literatures_on_work_programms_id  (work_programms_id)
#

require 'test_helper'

class LiteratureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
