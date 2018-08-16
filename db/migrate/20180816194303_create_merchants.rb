class CreateMerchants < ActiveRecord::Migration[5.2]
  def change
    create_table :merchants do |t|
      t.integer  :merchant_id
      t.text     :name
      t.text     :created_at
      t.text     :updated_at

    end
  end
end
