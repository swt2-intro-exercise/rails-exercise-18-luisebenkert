require 'rails_helper'

describe "Author index page", type: :feature do

  it "should render without error" do
    visit authors_path
    expect(page).not_to have_text("The action 'index' could not be found for AuthorsController")
  end
end