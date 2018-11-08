require 'rails_helper'
include AuthorsHelper

describe "Author edit page", type: :feature do

  it "should render without error" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)
    expect(page).not_to have_text("The action 'edit' could not be found for AuthorsController")
  end

  it "should show no error when changing the author's first name" do
    @author = FactoryBot.create :author
    visit edit_author_path(@author)

    fill_in 'author[first_name]', with: "Alan Mathison"

    click_on 'submit'

    expect(page).not_to have_text('Unable to find field "author[first_name]"')
  end
end