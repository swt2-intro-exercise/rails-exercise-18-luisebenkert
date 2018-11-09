include AuthorsHelper

describe "New paper page", :type => :model do

  it "should have an empty list of authors" do
    @paper = FactoryBot.create :paper
    expect(@paper.authors).to eq([])
  end

  it "should cause no error when having a paper with an author" do
    @paper = FactoryBot.create :paper
    @author = FactoryBot.create :author
    @paper.authors = [@author]
  end
end