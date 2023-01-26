require_relative '../lib/crypto_scrapper.rb'

describe "crypto" do
    it "name" do
      expect(crypto_name?(ETH)).to eq(true)
      expect(crypto_name?(TRX)).to eq(true)
    end
  
    it "values" do
        expect(crypto_values(1.00)).to eq(true)
        expect(crypto_values(1.08)).to eq(true)
    end
  end