
describe "New author model", type: :model do
    it "should have first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing', name eq. to 'Alan Turing'" do
        author = Author.new()
        author.first_name = 'Alan'
        expect(author.first_name).to eq('Alan')
        author.last_name = 'Turing'
        expect(author.last_name).to eq('Turing')
        author.homepage = 'http://wikipedia.org/Alan_Turing'
        expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
        expect(author.name).to eq('Alan Turing')
    end
end