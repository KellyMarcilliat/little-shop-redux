RSpec.describe 'Merchant index page' do
  before(:each) do
    @merchant_1 = Merchant.create( name: "Bob")
    @merchant_2 = Merchant.create( name: "Mary")
  end
  context 'show merchant details' do
    it 'should show one merchant' do

      visit '/merchants/1'

    #  save_and_open_page

      expect(page).to have_content(@merchant_1.name)
    end
  end
  it 'should have an edit button' do
    visit '/merchants/1'

    #save_and_open_page

    expect(page).to have_button('Edit')

  end

  it 'should be able to edit from the show space'do
    visit '/merchants/1'
    click_button('Edit')
    expect(current_path).to eq ("/merchants/#{@merchant_1.id}/edit")
  end

  it 'should have a delete button' do
    visit '/merchants/1'

    expect(page).to have_button('Delete')
  end
end
