
describe "Author index page", type: :feature do
    it "should render name, homepage and link to author page" do
        visit authors_path
        expect(page).to have_text("Name")
        expect(page).to have_text("Homepage")
        expect(page).to have_link 'New', href: new_author_path
    end
    #geht das auch anders
    it "should have link to Edit Author Page" do
        @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: 'http://wikipedia.org/Alan_Turing')
        @author.save
        visit authors_path
        expect(page).to have_link 'Edit', href: edit_author_path(@author)
    end
end