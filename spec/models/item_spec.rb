RSpec.describe Item do
  describe 'Validations' do
    it 'is valid with all attributes present' do
      item_1 = Item.create(item_id: 2, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: 'date', updated_at: 'date')
      expect(item_1).to be_valid
    end
    it 'is invalid without an item_id' do
      item = Item.create(name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: 'date', updated_at: 'date')
      expect(item).to_not be_valid
    end
    it 'is invalid without a name' do
      item = Item.create(item_id: 5, description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: 'date', updated_at: 'date')
      expect(item).to_not be_valid
    end
    it 'is invalid without a description' do
      item = Item.create(item_id: 5, name: 'Item 1', unit_price: 1200, merchant_id: 12334141, created_at: 'date', updated_at: 'date')
      expect(item).to_not be_valid
    end
    it 'is invalid without a unit_price' do
      item = Item.create(item_id: 5, name: 'Item 1', description: 'Really Great Item 1', merchant_id: 12334141, created_at: 'date', updated_at: 'date')
      expect(item).to_not be_valid
    end
    it 'is invalid without a merchant_id' do
      item = Item.create(item_id: 5, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, created_at: 'date', updated_at: 'date')
      expect(item).to_not be_valid
    end
    it 'is invalid without a created_at date' do
      item = Item.create(item_id: 5, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, updated_at: 'date')
      expect(item).to_not be_valid
    end
    it 'is invalid without an updated_at date' do
      item = Item.create(item_id: 5, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: 'date')
      expect(item).to_not be_valid
    end
  end
end
