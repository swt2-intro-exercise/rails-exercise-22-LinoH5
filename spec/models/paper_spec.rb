require 'rails_helper'

describe "Paper model", type: :model do
  it "should have properties title, venue and year" do
    paper = Paper.new(title: "test title", venue: "test venue", year: 2000)
    expect(paper.title).to eq("test title")
    expect(paper.venue).to eq("test venue")
    expect(paper.year).to eq(2000)
  end
end
