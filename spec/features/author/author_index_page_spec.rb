require 'rails_helper'
include AuthorsHelper

describe "Author index page", type: :feature do

  it "should render without error" do
    visit authors_path
    expect(page).not_to have_text("The action 'index' could not be found for AuthorsController")
  end

  it "should display author's name" do
    @alan = FactoryBot.create :author
    name = concat_strings(@alan.first_name, @alan.last_name)
    visit authors_path
    expect(page).to have_text(name)
  end

  it "should have a link to add a new author" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a link to the author's individual page" do
    visit authors_path
    @alan = FactoryBot.create :author
    expect(page).to have_link 'View', href: author_path(@alan)
  end
end