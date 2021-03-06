require 'spec_helper'

# An abc tune itself consists of a tune header and a tune body,
# terminated by an empty line or the end of the file. It may
# also contain comment lines or stylesheet directives.
#
# The tune header is composed of several information field lines,
# which are further discussed in information fields. The tune
# header should start with an X:(reference number) field followed
# by a T:(title) field and finish with a K:(key) field.
#
# The tune body, which contains the music code, follows immediately
# after. Certain fields may also be used inside the tune body - see
# use of fields within the tune body.
#
# It is legal to write an abc tune without a tune body. This
# feature can be used to document tunes without transcribing them.
#
# Abc music code lines are those lines in the tune body which give
# notes, bar lines and other musical symbols - see the tune body
# for details. In effect, music code is the contents of any line
# which is not an information field, stylesheet directive or
# comment line. 
#
describe ABC::Tune do
  context "First tune" do
    let(:tune) {ABC::File.new("spec/fixtures/english.abc").tunes[0]}
    it "should have a header" do
      expect tune.header
    end
    it "should have a body" do
      expect tune.body
    end
    it "should have a reference number of 1" do
      expect(tune.reference).to eq 1
    end
    it "should have the title 'Dusty Miller, The'" do
      expect(tune.titles[0]).to eq 'Dusty Miller, The'
    end
    it "should have a meter of 3/4" do
      expect(tune.meter).to eq '3/4'
    end
    it "should have a key of G" do
      expect(tune.key).to eq 'G'
    end
  end
  context "second tune" do
    let(:tune) {ABC::File.new("spec/fixtures/english.abc").tunes[1]}
    it "should have a header" do
      expect tune.header
    end
    it "should have a body" do
      expect tune.body
    end
    it "should have a reference number of 2" do
      expect(tune.reference).to eq 2
    end
    it "should have the title 'Old Sir Simon the King'" do
      expect(tune.titles[0]).to eq 'Old Sir Simon the King'
    end
    it "should have a meter of 9/8" do
      expect(tune.meter).to eq '9/8'
    end
    it "should have a source of 'Offord MSS'" do
      expect(tune.source).to eq 'Offord MSS'
    end
    it "should have a note of 'see also Playford'" do
      expect(tune.notes[0]).to eq 'see also Playford'
    end
    it "should have a rhythm of 'SJ'" do
      expect(tune.rhythm).to eq 'SJ'
    end
    it "should have a key of G" do
      expect(tune.key).to eq 'G'
    end
  end
  
end
