class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table  :invoices do |t|
      t.integer   :id
      t.integer   :customer_id
      t.integer   :merchant_id 
      t.text      :status 
      t.text      :created_at
      t.text      :updated_at
      
      t.timestamps  null: false
    end 
  end
end
