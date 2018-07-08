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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
