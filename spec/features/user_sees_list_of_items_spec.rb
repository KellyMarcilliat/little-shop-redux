# RSpec.describe 'Item index page' do
#     @item_1 = Item.create(item_id: 2, name: 'Item 1', description: 'Really Great Item 1', unit_price: 1200, merchant_id: 12334141, created_at: 'date', updated_at: 'date')
#     @item_2 = Item.create(item_id: 4, name: 'Item 2', description: 'Really Great Item 2', unit_price: 1300, merchant_id: 12334142, created_at: 'date', updated_at: 'date')
#   context 'show item details' do
#     it 'should show all items' do
#
#       visit '/items'
#
#       expect(page).to have_content(@item_1.description)
#       expect(page).to have_content(@item_2.description)
#     end
#   end
# end
