class CreateBasketContents < ActiveRecord::Migration
  def self.up
    create_table :basket_contents do |t|
      t.int :basket_id
      t.int :article_id
      t.int :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :basket_contents
  end
end
