# == Schema Information
#
# Table name: passenger_bookings
#
#  id           :bigint           not null, primary key
#  booking_id   :bigint           not null
#  passenger_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not nullr
#
class PassengerBooking < ApplicationRecord
  belongs_to :booking
  belongs_to :passenger
end
