require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not accept empty inputs" do 
    @paper = Paper.new(title: 'Title',venue: 'Venue',year: '2000')
    expect(@paper.save()).to eq(true)
    @paper = Paper.new(title: 'Title',venue: '',year: '2000')
    expect(@paper.save()).to eq(false)
    @paper = Paper.new(title: '',venue: 'Venue',year: '2000')
    expect(@paper.save()).to eq(false)
    @paper = Paper.new(title: 'Title',venue: 'Venue',year: '')
    expect(@paper.save()).to eq(false)
  end
  it "should only accept numerical data as year attribut" do 
    @paper = Paper.new(title: 'Title',venue: 'Venue',year: '2000')
    expect(@paper.save()).to eq(true)
    @paper = Paper.new(title: 'Title',venue: 'Venue',year: 'Year2000')
    expect(@paper.save()).to eq(false)
  end
end
