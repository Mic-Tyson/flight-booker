class CreateAirports < ActiveRecord::Migration[7.1]
  def change
    create_table :airports do |t|
      t.integer :airport_code
      t.text :name

      t.timestamps
    end
  end
end
