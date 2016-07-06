

require '../caesar_cipher'

describe "#caesar_cipher" do

  context "try to use diffrent keys" do


  it "When we input word \"test\" and key 5" do
    expect( caesar_cipher("test", 5) ).to eq "yjxy"
  end


  it "When we input word \"test\" and key 4" do
    expect( caesar_cipher("test", 4) ).to eq "xiwx"
  end

  it "When we input word \"test\" and key 0" do
    expect( caesar_cipher("test", 0) ).to eq "test"
  end

  it "When we input word \"test\" and key -1" do
    expect( caesar_cipher("test", -1) ).to eq "sdrs"
  end

  it "When we input word \"test\" and key 30" do
    expect( caesar_cipher("test", 30) ).to eq "xiwx"
  end

  end

  context "try to use diffrent words" do

    it "When we input word \"Test\" and key 5" do
      expect( caesar_cipher("Test", 5) ).to eq "Yjxy"
    end

    it "When we input word \"Test test_1 test_2 test!!!???$$$%%%\" and key 5" do
      expect( caesar_cipher("Test test_1 test_2 test!!!???$$$%%%", 5) ).to eq "Yjxy yjxy_1 yjxy_2 yjxy!!!???$$$%%%"
    end

  end

end
