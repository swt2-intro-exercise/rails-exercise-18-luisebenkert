require 'rails_helper'

describe "New Paper page", type: :feature do

  it "should render withour error" do
    visit new_paper_path
  end

  it "should not validate if title is missing" do
    visit new_paper_path

    paper = Paper.new(venue: "mind 49: 433-460", year: 1950)

    expect(paper).to_not be_valid
  end

  it "should not validate if venue is missing" do
    visit new_paper_path

    paper = Paper.new(title:"computing machinery and intelligence", year: 1950)

    expect(paper).to_not be_valid
  end

  it "should not validate if year is missing" do
    visit new_paper_path

    paper = Paper.new(title:"computing machinery and intelligence", venue: "mind 49: 433-460")

    expect(paper).to_not be_valid
  end

  it "should not validate if year is not numeric" do
    visit new_paper_path

    paper = Paper.new(title:"computing machinery and intelligence", venue: "mind 49: 433-460", year: "nineteen-fifty")

    expect(paper).to_not be_valid
  end
end