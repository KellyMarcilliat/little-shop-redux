RSpec.describe Item do
  # describe 'Class Methods' do
  #   describe '.find_by_item_id' do
  #     it 'should find item by item id' do
  #       item_1 = Item.create(id: 0, item_id: 2, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: Time.now, updated_at: Time.now)
  #       item_2 = Item.find_by_item_id(2)
  #
  #       expect(item_1).to match(item_2)
  #     end
  #   end
  # end

  describe 'Validations' do
    it 'is valid with all attributes present' do
      item = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", unit_price: 12, image: 'pic_of_cat')

      expect(item).to be_valid
    end


    it 'is invalid without a name' do
      item = Item.create(name: nil, description: "Delicious pastries", unit_price: 12, image: 'pic_of_cat')

      expect(item).to_not be_valid
    end
    #
    it 'is invalid without a description' do
      item = Item.create(name: "Smaug's Cupcake", unit_price: 12, image: 'pic_of_cat')

      expect(item).to_not be_valid
    end
    #
    it 'is invalid without a unit_price' do
      item = Item.create(name: "Smaug's Cupcake", description: "Delicious pastries", image: 'pic_of_cat')

      expect(item).to_not be_valid
    end


    it 'is invalid without a picture' do
      item = Item.create(name: "Smaug's cupcake", description: "Delicious pastries", unit_price: 12)
      expect(item).to_not be_valid

    end

  end
end
