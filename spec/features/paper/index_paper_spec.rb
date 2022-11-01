require 'rails_helper'

describe "Index paper page", type: :feature do
    it "should link to edit view for paper" do
        @paper = FactoryBot.create :paper
        visit papers_path

        expect(page).to have_link('Edit', href: edit_paper_path(@paper))
    end

    it "should delete a paper from the database on link click" do
        @paper = FactoryBot.create :paper
        visit papers_path

        expect(Paper.count).to eq(1)

        find_link('Delete').click

        expect(Paper.count).to eq(0)
    end

    it "should filter papers by URL parameter (year)" do
        @paper = FactoryBot.create :paper
        visit papers_path(year: 1950)

        expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")

        visit papers_path(year: 1968)

        expect(page).to_not have_text("COMPUTING MACHINERY AND INTELLIGENCE")
    end
end