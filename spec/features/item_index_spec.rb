RSpec.describe 'Item index page' do

  before(:each) do
    @item_1 = Item.create( name: "A neat item", description: "Awesome, Wow.", unit_price:10, image: 'Look_how_cool_pic')
    @item_2 = Item.create( name: "An item you need",  description: "Not so cool", unit_price: 50, image: 'pic_of_a_not_cool_thing')
  end

  context 'item details' do

    it 'should show all items' do
      visit '/items'
      save_and_open_page

      expect(page).to have_content(@item_1.name)
      expect(page).to have_content(@item_2.name)
    end
    it 'should show all item prices' do

      visit '/items'

      expect(page).to have_content(@item_2.unit_price)
      expect(page).to have_content(@item_2.unit_price)
    end

    it 'should show all images' do

      visit '/items'

      page.has_xpath?(@item_1.image)
      page.has_xpath?(@item_2.image)
    end

    it 'should be able to create a new item' do
      visit '/items'
      click_button "Create A New Item"

        expect(current_path).to eq("/items/new")
    end


  end


















end
