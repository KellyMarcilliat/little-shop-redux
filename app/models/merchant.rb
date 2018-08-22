class Merchant < ActiveRecord::Base
  has_many  :invoices
  has_many  :items
  validates_presence_of :name

  def total_items
    items.count
  end

  def avg_price
    items.average(:unit_price)
  end

  def total_price
    items.sum(:unit_price)
  end

  def self.most_items
    @merchants = Merchant.all
    @merchants.max do |merchant|
      merchant.total_items
    end
  end

  def self.highest_price
    highest_priced_item = Item.maximum(:unit_price)
    merchant_with_high_item = Item.find_by(unit_price: highest_priced_item).merchant_id
    Merchant.find_by(id: merchant_with_high_item)
  end



end
