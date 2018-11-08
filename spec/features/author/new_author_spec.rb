require 'rails_helper'

describe "New author page", type: :feature do

  it "should render withour error" do
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_author_path

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should show an error when an input field wasn't filled out" do
    visit new_author_path

    fill_in 'author[first_name]', with: "Alan"
    fill_in 'author[homepage]', with: "http://wikipedia.org/Alan_Turing"

    click_on 'submit'

    expect(page).to have_css('.field_with_errors')
  end
end