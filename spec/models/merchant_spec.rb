RSpec.describe Merchant do
  describe "Validations" do
    it 'is valid with a name' do
      merchant = Merchant.create(name: "Jax's Shop")

      expect(merchant).to be_valid
    end
    it 'is invalid without a name' do
      merchant = Merchant.create(name: nil)

      expect(merchant).to_not be_valid
    end
    it 'can show total number of items' do
      merchant = Merchant.create(name: "Smaug's Treasure Shop")
      item = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 12, image: 'pic_of_cat', merchant_id: 1)
      item_2 = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 12, image: 'pic_of_cat', merchant_id: 1)
      expect(merchant.total_items).to eq(2)
    end

    it 'returns average price' do
      merchant = Merchant.create(name: "Smaug's Treasure Shop")

      item = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 2, image: 'pic_of_cat', merchant_id: 1)
      item_2 = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 10, image: 'pic_of_cat', merchant_id: 1)

      expect(merchant.avg_price).to eq(6)
    end

    it 'returns total price' do
      merchant = Merchant.create(name: "Smaug's Treasure Shop")

      item = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 2, image: 'pic_of_cat', merchant_id: 1)
      item_2 = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 10, image: 'pic_of_cat', merchant_id: 1)

      expect(merchant.total_price).to eq(12)
    end

    it 'returns merchant with most items' do
      merchant_0 = Merchant.create(name: "Smaug's Treasure Shop")
      merchant_1 = Merchant.create(name: "Gracie's Blanket Shop")


      item_1= Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 2, image: 'pic_of_cat', merchant_id: 1)
      item_2 = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 10, image: 'pic_of_cat', merchant_id: 1)
      item_3 = Item.create(name: "Comfy Blanket", description: "A blanket", unit_price: 10, image: 'pic_of_cat', merchant_id: 2)
      item_4 = Item.create(name: "Comfier Blanket", description: "A better blanket", unit_price: 10, image: 'pic_of_cat', merchant_id: 2)
      item_5 = Item.create(name: "Comfiest Blanket", description: "The Best Blanket", unit_price: 10, image: 'pic_of_cat', merchant_id: 2)

      expect(Merchant.most_items).to eq(merchant_1)

    end

    it 'returns merchant with highest_priced_item' do
      erchant_0 = Merchant.create(name: "Smaug's Treasure Shop")
      merchant_1 = Merchant.create(name: "Gracie's Blanket Shop")


      item_1= Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 2, image: 'pic_of_cat', merchant_id: 1)
      item_2 = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 10, image: 'pic_of_cat', merchant_id: 1)
      item_3 = Item.create(name: "Comfy Blanket", description: "A blanket", unit_price: 10, image: 'pic_of_cat', merchant_id: 2)
      item_4 = Item.create(name: "Comfier Blanket", description: "A better blanket", unit_price: 10, image: 'pic_of_cat', merchant_id: 2)
      item_5 = Item.create(name: "Comfiest Blanket", description: "The Best Blanket", unit_price: 20, image: 'pic_of_cat', merchant_id: 2)
      expect(Merchant.highest_price).to eq(merchant_1)
    end

  end
end
