require 'rails_helper'

describe "Show paper view" do
  it "should show papers authors" do
    @alan = FactoryBot.create :author
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)

    expect(page).to have_text("Alan Turing")
  end
end