require "spec_helper.rb"

describe GlitchedString do
  let(:str) do
    "foo"
  end

  describe "String#glitch" do
    it "generates glitched string" do
      str.glitch.chars.size.should == str.chars.size * (8 + 8 + 8 + 1)
    end

    it "generates glitched string with options" do
      str.glitch(upper: 2, middle: 4, lower: 10).chars.size.should == str.chars.size * (2 + 4 + 10 + 1)
    end
  end

  describe "String#glitch!" do
    it "generate glitched string destructively" do
      original_str = str.clone
      str.glitch!
      str.chars.size.should == original_str.chars.size * (8 + 8 + 8 + 1)
    end
  end
end
