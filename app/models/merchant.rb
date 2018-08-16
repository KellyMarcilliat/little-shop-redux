class Merchant < ActiveRecord::Base
validates_presence_of :name, :merchant_id, :created_at, :updated_at
# validates_presence_of :updated_at




end
