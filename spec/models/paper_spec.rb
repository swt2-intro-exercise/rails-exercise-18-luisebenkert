include AuthorsHelper

describe "New paper page", :type => :model do

  it "should have an empty list of authors" do
    @paper = FactoryBot.create :paper
    expect(@paper.authors).to be_empty
  end

  it "should cause no error when having a paper with an author" do
    @paper = FactoryBot.create :paper
    @author = FactoryBot.create :author
    @paper.authors = [@author]
    expect(@paper.authors).to include(@author)
  end
end