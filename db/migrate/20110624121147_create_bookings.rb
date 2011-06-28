class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.int :customer_id
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
