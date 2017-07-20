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

class Literature < ApplicationRecord
  belongs_to :work_programm
end
