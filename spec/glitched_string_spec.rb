# coding: utf-8
require "spec_helper.rb"

describe GlitchedString do
  let(:str) do
    "foo"
  end

  describe "String#glitch" do
    it "generates glitched string" do
      str.glitch.split(//).size.should == str.split(//).size * (8 + 8 + 8 + 1)
    end

    it "generates glitched string with options" do
      str.glitch(upper: 2, middle: 4, lower: 10).split(//).size.should == str.split(//).size * (2 + 4 + 10 + 1)
    end
  end

  describe "String#glitch!" do
    it "generate glitched string destructively" do
      original_str = str.clone
      str.glitch!
      str.split(//).size.should == original_str.split(//).size * (8 + 8 + 8 + 1)
    end
  end
end
