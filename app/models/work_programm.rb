# == Schema Information
#
# Table name: work_programms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class WorkProgramm < ApplicationRecord
  has_many :discipline_contents
  has_many :literatures
end
