require 'rails_helper'

describe "Edit author page", type: :feature do
	it "should save changes" do
		@author = FactoryBot.create :author
		visit edit_author_path(@author)
		page.fill_in 'author[first_name]', with: 'Alano'
		find('input[type="submit"]').click
		@author.reload
		expect(@author.first_name).to eq("Alano")
	end
end