require 'rails_helper'

describe "Index paper page", type: :feature do
    it "should link to edit view for paper" do
        @paper = FactoryBot.create :paper
        visit papers_path

        expect(page).to have_link('Edit', href: edit_paper_path(@paper))
    end
end