class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer  :item_id
      t.text     :name
      t.text     :description
      t.integer  :unit_price
      t.integer  :merchant_id

      t.timestamps null: false
    end
  end
end