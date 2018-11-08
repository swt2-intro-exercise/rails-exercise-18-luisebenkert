require 'rails_helper'
include AuthorsHelper

describe "Author edit page", type: :feature do

  it "should render without error" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)
    expect(page).not_to have_text("The action 'edit' could not be found for AuthorsController")
  end
end