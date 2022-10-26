
describe "New author model", type: :model do
    it "should have first_name eq. to 'Alan', last_name eq. to 'Turing', homepage eq. to 'http://wikipedia.org/Alan_Turing', name eq. to 'Alan Turing'" do
        author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
        expect(author.first_name).to eq('Alan')
        expect(author.last_name).to eq('Turing')
        expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
        expect(author.name).to eq('Alan Turing')
    end
end