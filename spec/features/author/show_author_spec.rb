require 'rails_helper'

describe "Show author page", type: :feature do
    it "should show author's name and homepage" do
        author = FactoryBot.create :author
        visit author_path(@alan)

        expect(page).to have_text("Alan Turing")
        expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    end
end