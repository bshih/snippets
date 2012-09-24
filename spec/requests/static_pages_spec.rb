require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'One-a-day'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_content('One-a-day')
    end
    it "should have the right title" do
      visit root_path
      page.should_not have_selector('title', :text => " | Home")
    end

  end

   describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => " | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit about_path
      page.should have_content('About')
    end
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => " | About")
    end
  end

end
