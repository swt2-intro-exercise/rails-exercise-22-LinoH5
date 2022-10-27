require 'rails_helper'

describe "Paper model", type: :model do
  it "should have properties title, venue and year" do
    paper = Paper.new(title: "test title", venue: "test venue", year: 2000)
    expect(paper.title).to eq("test title")
    expect(paper.venue).to eq("test venue")
    expect(paper.year).to eq(2000)
  end

  it "should not validate paper without a title" do
    paper = Paper.new(title: nil, venue: "test venue", year: 2000)
    expect(paper).to_not be_valid

    paper = Paper.new(title: "test title", venue: nil, year: 2000)
    expect(paper).to_not be_valid

    paper = Paper.new(title: "test title", venue: "test value", year: nil)
    expect(paper).to_not be_valid

    paper = Paper.new(title: "test title", venue: "test venue", year: "string")
    expect(paper).to_not be_valid
  end
end
