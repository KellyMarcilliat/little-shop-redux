
RSpec.describe Merchant do

  describe "Validations" do
    it 'is invalid without a name' do
      merchant = Merchant.create(merchant_id: 2, created_at: "now", updated_at: "never")

      expect(merchant).to_not be_valid
    end

    it 'is invalid without an id' do
      merchant = Merchant.create(created_at: "now", updated_at: "never")

    it ' is invalid without updated_at' do
      merchant = Merchant.create(merchant_id: 2, name: 'sally', created_at: "now", updated_at: nil)


      expect(merchant).to_not be_valid
    end
  end
end
