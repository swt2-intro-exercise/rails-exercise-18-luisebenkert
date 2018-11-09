require 'rails_helper'

describe "Paper edit page", type: :feature do

  it "should have a single multiple select box" do
    @paper = FactoryBot.create :paper
    visit edit_paper_path(@paper)
    expect(page).to have_css("select[multiple]", count:1)
  end

end