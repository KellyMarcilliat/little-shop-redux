class Item < ActiveRecord::Base
validates_presence_of :item_id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at

  def self.find_by_item_id(item_id)
    where("item_id = '#{item_id}'").first
  end
end
