class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.varchar :name
      t.varchar :label

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
