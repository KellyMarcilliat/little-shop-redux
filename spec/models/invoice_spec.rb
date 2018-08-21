RSpec.describe Invoice do
  describe "Validations" do
    # it 'is invalid without invoice_id' do
    #   invoice = Invoice.create(customer_id: 10, merchant_id: 100, status: "pending",  created_at: "1000", updated_at: "10000")
    # 
    #   expect(invoice).to_not be_valid
    # end
    # 
    # it 'is invalid without customer_id' do
    #   invoice = Invoice.create(invoice_id: 2, merchant_id: 200, status: "pending",  created_at: "2000", updated_at: "20000")
    # 
    #   expect(invoice).to_not be_valid
    # end
    
    it 'is invalid without merchant_id' do
      invoice = Invoice.create(id: 3, customer_id: 30, status: "pending",  created_at: "3000", updated_at: "30000")
    
      expect(invoice).to_not be_valid
    end
    
    it 'is invalid without status' do
      invoice = Invoice.create(id: 4, customer_id: 40, merchant_id: 400, created_at: "4000", updated_at: "40000")
    
      expect(invoice).to_not be_valid
    end
    
    # it 'is invalid without a created_at' do
    #   invoice = Invoice.create(invoice_id: 5, customer_id: 50, merchant_id: 500, status: "pending",  updated_at: "50000")
    # 
    #   expect(invoice).to_not be_valid
    # end
    # 
    # it 'is invalid without updated_at' do
    #   invoice = Invoice.create(invoice_id: 6, customer_id: 60, merchant_id: 600, status: "pending",  created_at: "6000")
    # 
    #   expect(invoice).to_not be_valid
    # end
    
    

  end
end