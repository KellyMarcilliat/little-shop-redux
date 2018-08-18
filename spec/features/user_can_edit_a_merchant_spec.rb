RSpec.describe 'Merchant edit page' do
  before(:each) do
    @merchant_1 = Merchant.create(merchant_id: 2, name: "Bob", created_at: "now", updated_at: "never")
    @merchant_2 = Merchant.create(merchant_id: 4, name: "Mary", created_at: "now", updated_at: "never")
  end
  context 'show merchant details' do
    it 'should show the merchant you are updating' do

      visit "/merchants/#{@merchant_1.id}/edit"


      save_and_open_page


      expect(page).to have_content("Edit #{@merchant_1.name}")

      expect(page).to have_content(@merchant_1.name)
    end
  end
end
