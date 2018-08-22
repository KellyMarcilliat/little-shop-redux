RSpec.describe 'Invoice show page' do
  before(:each) do
    @invoice_1 = Invoice.create(id: 1, customer_id: 10, merchant_id: 100, status: "pending",  created_at: "1000", updated_at: "10000")
    @invoice_2 = Invoice.create(id: 2, customer_id: 20, merchant_id: 200, status: "paid",  created_at: "2000", updated_at: "20000")
  end
  context 'invoice show page details' do
    it 'should show invoice id' do

      visit '/invoices/1'
      #save_and_open_page

      expect(page).to have_content("Invoice: #{@invoice_1.id}")
    end
    it 'should show invoice status' do
      visit '/invoices/2'

      expect(page).to have_content("Invoice: #{@invoice_2.id} - #{@invoice_2.status}")
    end
    it 'should have delete button' do
      visit '/invoices/1'

      expect(page).to have_button("Delete")
      expect(page).to have_button("Delete")
    end
    it 'should have edit button' do
      visit '/invoices/2'

      expect(page).to have_button("Edit")
      expect(page).to have_button("Edit")
    end
    it 'should be able to edit from the show space'do
      visit '/invoices/1'
      click_button('Edit')
      expect(current_path).to eq ("/invoices/#{@invoice_1.id}/edit")
      #save_and_open_page
    end
  end
end
