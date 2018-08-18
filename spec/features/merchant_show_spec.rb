RSpec.describe 'Merchant index page' do
  before(:each) do
    @merchant_1 = Merchant.create(merchant_id: 2, name: "Bob", created_at: "now", updated_at: "never")
    @merchant_2 = Merchant.create(merchant_id: 4, name: "Mary", created_at: "now", updated_at: "never")
  end
  context 'show merchant details' do
    it 'should show one merchant' do

      visit '/merchants/1'

    #  save_and_open_page

      expect(page).to have_content(@merchant_1.name)
    end
  end
end
