# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  subject    :string
#  details    :text
#  completed  :boolean          default(FALSE), not null
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ApplicationRecord
  validates :subject, :details, :date, presence: true
end
