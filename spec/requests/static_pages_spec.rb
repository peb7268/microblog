require 'spec_helper'

describe "StaticPages" do
	describe "Home Page" do
		it "Should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end
		it "Should have: the title Home" do
			visit '/static_pages/home'
			page.should have_selector('title', :title => "Home")
		end
	end #ends the describe for Home Page

	describe "Home Page Base title test" do
		it "Should have the base title 'Ruby On Rails microblog'" do
			visit '/static_pages/home'
			page.should have_selector('title', :title=>"Ruby On Rails microblog")
		end
	end

	describe "Help Page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
	end #ends the describe for Help Page

	describe "About Page" do
		it "Should have the content 'About' somewhere in the page" do
			visit '/static_pages/about'
			page.should have_content('About')
		end
	end
end #ends the Static Pages do
