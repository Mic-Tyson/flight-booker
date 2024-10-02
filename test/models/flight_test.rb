# == Schema Information
#
# Table name: flights
#
#  id           :bigint           not null, primary key
#  capacity     :integer
#  start        :datetime
#  duration     :integer
#  arrival_id   :bigint
#  departure_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
