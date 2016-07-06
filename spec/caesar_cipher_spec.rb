

require '../caesar_cipher'

describe "#caesar_cipher" do

  it "When we input word \"test\" and key 5" do
    out = caesar_cipher("test", 5)
    expect(out).to eq "yjxy"
  end


end
