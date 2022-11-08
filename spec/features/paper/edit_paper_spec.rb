require 'rails_helper'

describe "Edit paper page", type: :feature do
	it "should allow to select paper authors from a multiple select box s" do
		@paper = FactoryBot.create :paper
		visit edit_paper_path(@paper)
		Author.all.each do |author|
			expect(page).to have_text(author.name)
		end
	end
end