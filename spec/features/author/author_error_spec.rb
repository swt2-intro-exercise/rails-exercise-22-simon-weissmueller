
describe "New Author Page", type: :feature do
    it "should raise an error when input didn't contain a valid last name" do
        visit new_author_path
        page.fill_in 'author[first_name]', with: 'Edsger'
        page.fill_in 'author[last_name]', with: ''
        page.fill_in 'author[homepage]', with: 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra'
        find('input[type="submit"]').click
        expect(page.status_code).to eq('404')
    end
end