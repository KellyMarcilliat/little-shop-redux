RSpec.describe 'Merchant new page' do
  it 'should have a cancel button' do
    visit '/merchants/new'
    # save_and_open_page
    expect(page).to have_button('Cancel')
  end


  it 'should have a create merchant button' do
      visit '/merchants/new'
      expect(page).to have_button('Create Merchant')
  end

  it 'should be able to create a new merchant' do
    visit '/merchants/new'
    fill_in "merchantname", with: "Modcloth"
    click_on "Create Merchant"

    expect(current_path).to eq('/merchants')
    # expect(page). to have_content "Modcloth"

  end

  it 'should be able to cancel' do
    visit 'merchants/new'
    click_on "Cancel"

    expect(current_path).to eq('/merchants')


   end


end
