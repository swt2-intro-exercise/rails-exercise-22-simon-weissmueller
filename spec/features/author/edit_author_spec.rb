
describe "Edit Author page", type: :feature do
    before(:each) do
        @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: 'http://wikipedia.org/Alan_Turing')
        @author.save
    end
    it "should render without errors" do
        visit edit_author_path(@author)
    end
    #läuft immer durch auch wenn kein Text in angezeigt wird
    it "should contain author info" do
        visit edit_author_path(@author)
        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
        expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    end
    it "should contain input field" do
        visit edit_author_path(@author)
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end
    it "should edit Author infos and update it in database" do
        visit edit_author_path(@author)
        page.fill_in 'author[first_name]', with: 'Edsger'
        page.fill_in 'author[last_name]', with: 'Dijkstra'
        page.fill_in 'author[homepage]', with: 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra'
        find('input[type="edit"]').click
        @author.reload
        expect(@author.last_name).to eq('Dijkstra')
        
    end

end
