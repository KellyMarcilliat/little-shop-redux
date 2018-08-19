RSpec.describe 'Item show page' do
  context 'show item details' do
    it 'should show page for single item' do
      item_1 = Item.create(id: 0, item_id: 2, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: Time.now, updated_at: Time.now)

      visit '/items/2'

      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_1.description)
    end
  end
end
