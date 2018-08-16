RSpec.describe 'Merchant index page' do
  before(:each) do
    @merchant_1 = Merchant.create(merchant_id: 2, name: "Bob", created_at: "now", updated_at: "never")
    @merchant_2 = Merchant.create(merchant_id: 4, name: "Mary", created_at: "now", updated_at: "never")
  end
  context 'show merchant details' do
    it 'should show all merchants' do

      visit '/merchants'

      expect(page).to have_content(@merchant_1.name)
      expect(page).to have_content(@merchant_2.name)
    end
  end
end
