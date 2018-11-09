include AuthorsHelper

describe "New paper page", :type => :model do

  it "should have an empty list of authors" do
    @paper = FactoryBot.create :paper
    expect(@paper.authors).to eq([])
  end
end