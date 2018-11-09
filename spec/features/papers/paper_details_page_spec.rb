require 'rails_helper'

describe "Paper details page", type: :feature do

  it "should render without error" do
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)
    expect(page).not_to have_text(" The action 'show' could not be found for PapersController")
  end

  it "should show the author's name" do
    @paper = FactoryBot.create :paper
    @author = FactoryBot.create :author
    @paper.authors << @author
    @paper.save
    visit paper_path(@paper)
    @paper.authors.each do |author|
      expect(page).to have_content(author.name)
    end
  end
end