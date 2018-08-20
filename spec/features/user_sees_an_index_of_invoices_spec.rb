RSpec.describe 'Invoices index page' do
  before(:each) do
    @invoice_1 = Invoice.create(id: 1, customer_id: 10, merchant_id: 100, status: "pending",  created_at: "1000", updated_at: "10000")
    @invoice_2 = Invoice.create(id: 2, customer_id: 20, merchant_id: 200, status: "paid",  created_at: "2000", updated_at: "20000")
  end
  context 'show invoice details' do
    it 'should show all invoices' do

      visit '/invoices'

      expect(page).to have_content(@invoice_1.id)
      expect(page).to have_content(@invoice_2.id)
    end
  end
end