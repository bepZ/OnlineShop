class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.varchar :number
      t.varchar :name
      t.varchar :label
      t.text :description
      t.int :category_id
      t.int :brand_id
      t.double :price

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
