require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
  it "chiffrement: (string)(clé du chiffrement)" do
    expect(caesar_cipher("Hello", 5)).to eq("Mjqqt")
    expect(caesar_cipher("Hello azerty World", 17)).to eq("Yvccf rqvikp Nficu")
    expect(caesar_cipher("Hello 666 azerty World", 666)).to eq("Xubbe 222 qpuhjo Mehbt")
  end
end