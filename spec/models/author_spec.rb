require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should exist Author Model" do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.de/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.de/Alan_Turing")
  end

  it "should fail when creating an author without last name" do
    author = Author.new(first_name: "Alan", homepage: "http://wikipedia.de/Alan_Turing")
    expect(author).to_not be_valid
  end
end
