require 'rails_helper'

describe 'Author page', type: :feature do
    it " of 'Alan Turing' should render without errors and display 'Alan Turing' " do 
        #was soll dieses @alan
        @alan = Author.new(first_name: "Alan", last_name: "Turing", homepage: 'http://wikipedia.org/Alan_Turing')
        @alan.save
        visit author_path(@alan)
        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
        expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    end
end