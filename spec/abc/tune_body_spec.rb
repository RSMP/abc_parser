require 'spec_helper'

describe ABC::TuneBody do
  let(:body) {ABC::File.new("spec/fixtures/english.abc").tunes[0].body}
  it "should start with a B" do
    expect(body.notes[0].name).to eq "B"
  end
  it "should have 24 measures" do
    expect(body.measures.size).to eq 24
  end
  it "should repeat the first 4 measures twice"
end
