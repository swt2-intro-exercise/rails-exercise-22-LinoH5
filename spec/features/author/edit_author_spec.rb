require 'rails_helper'

describe "Edit author page", type: :feature do
    it "should be able to edit author in database" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)

        page.fill_in 'author[first_name]', with: 'Alan'
        page.fill_in 'author[last_name]', with: 'Turning'
        page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
        find('input[type="submit"]').click

        @alan.reload
        expect(@alan.last_name).to eq('Turning')
    end
end