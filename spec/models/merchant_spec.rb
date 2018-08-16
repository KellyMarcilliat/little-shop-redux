
RSpec.describe Merchant do

  describe "Validations" do
    it 'is invalid without a name' do
      merchant = Merchant.new

      expect(merchant).to_not_be_valid

    end
  end

end
