class Merchant < ActiveRecord::Base
validates_presence_of :name
validates_presence_of :created_at



end
