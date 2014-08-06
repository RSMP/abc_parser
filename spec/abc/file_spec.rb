require 'spec_helper'

# An abc file consists of one or more abc tune transcriptions,
# optionally interspersed with free text and typeset text
# annotations. It may optionally start with a file header to
# set up default values for processing the file.
#
# The file header, abc tunes and text annotations are separated
# from each other by empty lines (also known as blank lines).
#
# An abc file with more than one tune in it is called an abc
# tunebook.
#
describe ABC::File do
  let(:file) {ABC::File.new("spec/fixtures/english.abc")}
  it "should load without error" do
    expect {file}.not_to raise_error
  end
  it "should be parsed" do
    expect(file).to be_parsed
  end
  it "should have a format version of 2.1" do
    expect(file.version).to eq 2.1
  end
  it "should have a file header" do
    expect(file.header)
  end
  it "should have 3 tunes" do
    expect(file.tunes.count).to eq 3
  end
end
