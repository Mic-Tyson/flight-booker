# == Schema Information
#
# Table name: airports
#
#  id           :bigint           not null, primary key
#  airport_code :integer
#  name         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class AirportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
