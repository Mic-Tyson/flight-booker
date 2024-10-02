class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.integer :capacity
      t.datetime :start
      t.integer :duration
      t.references :arrival, foreign_key: { to_table: :airports }
      t.references :departure, foreign_key: { to_table: :airports }
      t.timestamps
    end
  end
end
