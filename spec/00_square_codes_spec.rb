require '00_square_codes'
require 'rspec'

# A "square code", also called a "Caesar box code", is a toy encryption algorithm.
# You take the length of the input string and find the perfect square that will
# encompass those characters. For example, a 14-character string would be encompassed
# within a 4x4 square. A 40-character string would be encompassed within a 7x7 square.
# You then print out the characters starting at the upper left corner of the square,
# filling in down and to the right, i.e., fill in column 1 from top-to-bottom, then
# fill in column 2 from top-to-bottom, and so on. Empty cells at the end are padded
# with spaces.

describe "#square_codes" do

  it "should handle empty input" do
    square_codes(nil).should == ""
  end

  it "should handle blank input" do
    square_codes("").should == ""
  end

  it "should handle a 1-character string" do
    square_codes("a").should == "a"
  end

  it "should handle a 2-character string" do
    square_codes("ab").should == "a b"
  end

  it "should handle a 3-character string" do
    square_codes("abc").should == "ac b"
  end

  it "should handle a 4-character string" do
    square_codes("abcd").should == "ac bd"
  end

  it "should handle a long string with no spaces" do
    expected = "Sagiai uliclo pileiu efixds rrspo catic"
    square_codes("Supercalifragilisticexpialidocious").should == expected
  end

  it "should handle perfectly-square output" do
    expected = "yryipoa oeanllv ussgeha siteoar imuxfri rpnafdc alnmoye"
    square_codes("you sir are simply a stunning example of foolhardy avarice").should == expected
  end

  it "should handle perfectly-rectangular output" do
    square_codes("have a nice day").should == "hae and via ecy"
  end

  it "should handle ragged-rectangular output" do
    square_codes("feed the dog").should == "fto ehg ee dd"
  end

end
