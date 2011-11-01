require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "GlitchedString" do
  before(:each) do
    @str = 'foo'
    @str_size = @str.size
  end
  it "generates glitched string" do
    @str.glitch.size.should == @str_size * (8 + 8 + 8 + 1)
    @str.should == 'foo'
  end

  it "generates glitched string with options" do
    @str.glitch(:upper => 2, :middle => 4, :lower => 10).size.should == @str_size * (2 + 4 + 10 + 1)
    @str.should == 'foo'
  end

  it "generate glitched string destructively" do
    result = @str.glitch!
    result.size.should == @str_size * (8 + 8 + 8 + 1)
    @str.size.should == @str_size * (8 + 8 + 8 + 1)
  end
end
