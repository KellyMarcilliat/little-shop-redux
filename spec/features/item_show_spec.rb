RSpec.describe 'Item Show Page' do
  before(:each) do
    @item_1 = Item.create( name: "Cool", description: "Awesome, Wow.", unit_price:10, image: 'Look_how_cool_pic')
    @item_2 = Item.create( name: "An item you need",  description: "Not so cool", unit_price: 50, image: 'pic_of_a_not_cool_thing')
  end

  context ' item details' do
    it 'should show one item'do
      visit '/items/1'


      #save_and_open_page
      expect(page).to have_content(@item_1.name)
    end

    it 'should have an edit button' do
      visit '/items/1'

      #save_and_open_page

      expect(page).to have_button('Edit')

    end

    it 'should be able to edit from the show space'do
      visit '/items/1'
      click_button('Edit')
      expect(current_path).to eq ("/items/#{@item_1.id}/edit")
    end

    it 'should have a delete button' do
      visit '/items/1'

      expect(page).to have_button('Delete')
    end

    it 'should be able to delete' do
      visit '/items/1'
      click_button('Delete')
      expect(current_path).to eq ("/items")
      expect(page).to_not have_content(@item_1.name)
    end






end
end
