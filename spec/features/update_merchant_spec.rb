RSpec.describe 'Merchant edit page' do
  before(:each) do
    @merchant_1 = Merchant.create(name: "Bob")
    @merchant_2 = Merchant.create( name: "Mary")
  end
  context 'show merchant details' do
    it 'should show the merchant you are updating' do

      visit "/merchants/#{@merchant_1.id}/edit"


      #save_and_open_page


      expect(page).to have_content("Edit #{@merchant_1.name}")

      expect(page).to have_content(@merchant_1.name)
    end
    it 'should have an update merchant button' do
      visit "/merchants/#{@merchant_1.id}/edit"
        save_and_open_page
      expect(page).to have_button("Update Merchant")
    end

    it 'should have a cancel button' do
      visit "/merchants/#{@merchant_1.id}/edit"

      expect(page).to have_button("Cancel")
    end

    it 'should be able to update a merchant' do
      visit "/merchants/#{@merchant_1.id}/edit"
      fill_in "merchantname", with: "Modcloth"
      click_on "Update Merchant"

      expect(current_path).to eq("/merchants/#{@merchant_1.id}")
      expect @merchant_1.name == "Modcloth"
    end

  end
end
