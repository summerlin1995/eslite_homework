class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :sku
      t.string :name
      t.integer :status
      t.boolean :published
      t.integer :price
      t.integer :original_price

      t.timestamps
    end
  end
end
