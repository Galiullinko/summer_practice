# == Schema Information
#
# Table name: discipline_contents
#
#  id                :integer          not null, primary key
#  position          :integer
#  title             :string
#  description       :text
#  lecture_hours     :integer          default("0")
#  practice_hours    :integer          default("0")
#  other_hours       :integer          default("0")
#  work_programms_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_discipline_contents_on_work_programms_id  (work_programms_id)
#

class DisciplineContent < ApplicationRecord
  belongs_to :work_programm
end
