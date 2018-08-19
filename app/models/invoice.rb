class Invoice < ActiveRecord::Base 
  validates_presence_of :invoice_id, :customer_id, :merchant_id, :status, :created_at, :updated_at
end 