require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "GlitchedString" do
  it "generates glitched string" do
    str = 'foo'
    str.to_glitch.size.should == str.size * (8 + 8 + 8 + 1)
  end

  it "generates glitched string with options" do
    str = 'foo'
    str.to_glitch(:upper => 2, :middle => 4, :lower => 10).size.should == str.size * (2 + 4 + 10 + 1)
  end
end
