describe "New author page", :type => :model do

  first_name = 'Alan'
  last_name = 'Turing'
  homepage = 'http://wikipedia.org/Alan_Turing'

  it "should create an instance of Author when a new Author is created" do
    author = Author.create(first_name: first_name, last_name: last_name, homepage: homepage)
    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)
  end

  it "should return the full name on function call name()" do
    author = Author.create(first_name: first_name, last_name: last_name, homepage: homepage)
    expect(author.name()).to eq(first_name + ' ' + last_name)
  end
end