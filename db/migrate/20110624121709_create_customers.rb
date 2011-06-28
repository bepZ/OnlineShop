class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.varchar :lastname
      t.varchar :firstname
      t.int :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
