# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.create([
  { airport_code: :LHR, name: 'London Heathrow' },
  { airport_code: :HND, name: 'Tokyo Haneda' },
  { airport_code: :MAD, name: 'Madrid Barajas' },
  { airport_code: :JFK, name: 'New York John F. Kennedy' }
])

# Create flights with dynamic arrival and departure IDs based on airport codes
Flight.create([
  { arrival_id: Airport.find_by(airport_code: :MAD).id, departure_id: Airport.find_by(airport_code: :LHR).id, capacity: 100, duration: 120, start: DateTime.now },
  { arrival_id: Airport.find_by(airport_code: :LHR).id, departure_id: Airport.find_by(airport_code: :HND).id, capacity: 200, duration: 840, start: DateTime.now },
  { arrival_id: Airport.find_by(airport_code: :JFK).id, departure_id: Airport.find_by(airport_code: :LHR).id, capacity: 200, duration: 600, start: DateTime.now },
  { arrival_id: Airport.find_by(airport_code: :LHR).id, departure_id: Airport.find_by(airport_code: :MAD).id, capacity: 100, duration: 120, start: DateTime.now }
])

