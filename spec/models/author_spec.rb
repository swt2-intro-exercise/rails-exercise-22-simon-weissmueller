
describe "New author model", type: :model do
    it "should have first_name: 'Alan'" do
    author = Author.new('Alan')
    expect(author.first_name).to eq('Alan')
    end
end