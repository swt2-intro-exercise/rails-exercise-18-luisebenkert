require 'rails_helper'

describe "Author details page", type: :feature do

  it "should render without error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).not_to have_text("Got AbstractController::ActionNotFound: The action 'show' could not be found for AuthorsController")
  end
end