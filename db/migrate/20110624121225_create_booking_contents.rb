class CreateBookingContents < ActiveRecord::Migration
  def self.up
    create_table :booking_contents do |t|
      t.int :booking_id
      t.int :article_id
      t.int :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :booking_contents
  end
end
