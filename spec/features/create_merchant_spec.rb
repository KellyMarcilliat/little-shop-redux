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
    fill_in "merchantname", with: "Gracie's Fish Shop"
    click_on "Create Merchant"

    expect(current_path).to eq('/merchants')
     # expect(page). to have_content "Gracie's Fish Shop"

  end

  it 'should be able to cancel' do
    visit 'merchants/new'
    fill_in "merchantname", with: "Cupcake Shop"
    click_button "Cancel"

    expect(current_path).to eq('/merchants')
    expect(page).not_to have_content("Cupcake Shop")


   end


end
