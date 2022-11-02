require 'rails_helper'

describe "Delete Author Action",type: :feature do
    it "should decrese the Author count" do
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: 'http://wikipedia.org/Alan_Turing')
    @author.save
    visit authors_path
    @count = Author.count
    find_link('Delete', href: author_path(@author)).click
    expect(Author.count).to eq(@count - 1)
    end
end
