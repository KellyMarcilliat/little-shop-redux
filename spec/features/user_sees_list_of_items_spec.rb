RSpec.describe 'Item index page' do
  context 'show item details' do
    it 'should show all items' do
      item_1 = Item.create(id: 0, item_id: 2, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: Time.now, updated_at: Time.now)
      item_2 = Item.create(id: 4, item_id: 4, name: 'Item 2', description: 'Really Great Item 2', unit_price: 1300, merchant_id: 12334142, created_at: Time.now, updated_at: Time.now)

      visit '/items'

      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_2.name)
    end
  end
end
