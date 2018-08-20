RSpec.describe 'Invoice edit page' do
  before(:each) do
    @invoice_1 = Invoice.create(id: 1, customer_id: 10, merchant_id: 100, status: "pending",  created_at: "1000", updated_at: "10000")
    @invoice_2 = Invoice.create(id: 2, customer_id: 20, merchant_id: 200, status: "paid",  created_at: "2000", updated_at: "20000")
  end
  context 'show edit details' do
    it 'should show invoice id' do

      visit '/invoices/1'

      expect(page).to have_content( @invoice_1.id)
    end 
  end
end