class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price_cents
      t.string :price_currency, default: "USD"

      t.timestamps
    end
  end
end
