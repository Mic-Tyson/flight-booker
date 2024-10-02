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
class Airport < ApplicationRecord
  enum airport_code: {
    LHR: 0,
    HND: 1,
    MAD: 2,
    JFK: 3
  }

  has_many :departures, class_name: 'Flight', foreign_key: 'departure_id'
  has_many :arrivals, class_name: 'Flight', foreign_key: 'arrival_id'
end
