require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should exist a Paper Model" do
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
    expect(paper.title).to eq("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(paper.venue).to eq("Mind 49: 433-460")
    expect(paper.year).to eq(1950)
  end

  it "should fail when creating a paper without a title" do
    paper = Paper.new(venue: "Mind 49: 433-460", year: 1950)
    expect(paper).to_not be_valid
  end

  it "should fail when creating a paper without a venue" do
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", year: 1950)
    expect(paper).to_not be_valid
  end

  it "should fail when creating a paper without a year" do
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460")
    expect(paper).to_not be_valid
  end

  it "should fail when creating a paper without a all attributes" do
    paper = Paper.new()
    expect(paper).to_not be_valid
  end

  it "should fail when creating a paper without a year" do
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: "nineteen-fifty")
    expect(paper).to_not be_valid
  end

  it "should have an empty list of authors" do
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
    expect(paper.authors).to eq([])
  end

end
