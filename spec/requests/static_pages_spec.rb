require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "shoould have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    														:text => "Home Title")

  	end

  end

    describe "Help papge" do
    	it "should have the content 'help'" do
    		visit '/static_pages/help'
    		page.should have_content('Help')
    	end

    	it "shoould have the right title" do
    		visit '/static_pages/help'
    		page.should have_selector('title',
    														:text => "Help Title")
  		end
    end

    describe "About page" do
    	it "should have the content 'About'" do
    		visit '/static_pages/about'
    		page.should have_content('About us');
    	end

    	it "shoould have the right title" do
    		visit '/static_pages/about'
    		page.should have_selector('title',
    														:text => "About Title")

  		end
    end
end
