class RemovePassengerIdFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :passenger_id, :integer
  end
end
