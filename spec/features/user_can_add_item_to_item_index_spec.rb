RSpec.describe 'Item new page' do
  context 'show create new item page' do
    it 'should show form to create new item' do
      visit '/items/new'

      expect(page).to have_selector('form')
    end

    it 'should have a dropdown menu of merchants' do
      merchant_1 = Merchant.create(merchant_id: 2, name: 'Bobs Burgers', created_at: Time.now, updated_at: Time.now)
      merchant_2 = Merchant.create(merchant_id: 4, name: 'Ingas Icecream', created_at: Time.now, updated_at: Time.now)

      visit '/items/new'

      expect(page).to have_selector('select')
    end

    it 'should have a cancel button' do
      visit '/items/new'

      expect(page).to have_link('Cancel')
    end

    # it 'should hava a create item button' do
    #   visit '/items/new'
    #
    #   expect(page).to have_button('Create Item')
    # end

    it 'should be able to cancel item creation' do
      visit '/items/new'
      save_and_open_page

    end

    # it 'should be able to create an item' do
    # end
  end
end
