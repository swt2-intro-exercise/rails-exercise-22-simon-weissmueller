
describe "Author index page", type: :feature do
    it "should render name, homepage and link to author page" do
        visit authors_path
        expect(page).to have_text("Name")
        expect(page).to have_text("Homepage")
        expect(page).to have_link 'New', href: new_author_path
    end

end