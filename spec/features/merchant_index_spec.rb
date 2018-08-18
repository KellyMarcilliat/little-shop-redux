RSpec.describe 'Merchant index page' do
  it 'should be able to delete merchant' do
    merchant_1 = Merchant.create(merchant_id: 2, name: "Maria", created_at: "now", updated_at: "never")

    visit '/merchants'
    click_on 'Delete'

    expect(current_path).to eq('/merchants')
    expect(page).to_not have_content(merchant_1.name)
  end

  it 'should have an edit button on index' do
    merchant_1 = Merchant.create(merchant_id: 2, name: "Maria", created_at: "now", updated_at: "never")
    visit '/merchants'

    #save_and_open_page

    expect(page).to have_button('Edit')
  end
  it 'should be able to edit merchant from index' do
    merchant_1 = Merchant.create(merchant_id: 2, name: "Maria", created_at: "now", updated_at: "never")
    visit '/merchants'

    click_button('Edit', match: :first)
     expect(current_path).to eq ("/merchants/#{merchant_1.id}/edit")
  end
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

  it 'should be linked to a merchant show page' do
    visit '/merchants'

    click_on @merchant_1.name

    expect(current_path).to eq("/merchants/#{@merchant_1.id}")
  end

  it 'should be able to create a merchant' do
    visit '/merchants'
    click_button "Create A New Merchant"

      expect(current_path).to eq("/merchants/new")
    end

  it 'should have a delete button' do
    visit '/merchants'

    expect(page).to have_button('Delete')
  end

 end
