require 'rails_helper'

describe "Paper index page", type: :feature do

  it "should be filtered by year when specified in url" do
    @paper1 = FactoryBot.create(:paper, title: 'paper1', year: 1950)
    @paper2 = FactoryBot.create(:paper, title: 'paper2', year: 1968)
    visit papers_path(year: 1950)
    expect(page).not_to have_text(@paper2.title)
  end

end