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
class Flight < ApplicationRecord
  belongs_to :departure, class_name: 'Airport', foreign_key: 'departure_id'
  belongs_to :arrival, class_name: 'Airport', foreign_key: 'arrival_id'
  has_many :bookings, dependent: :destroy
  has_many :passengers, through: :bookings

  accepts_nested_attributes_for :arrival

  def flight_date_formatted
    start.strftime '%d/%m/%Y'
  end

  def flight_info
    "#{departure.name} to  #{arrival.name}  at  #{start}  (#{duration/60} hours)"
  end
end
