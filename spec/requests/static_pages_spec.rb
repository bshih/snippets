require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: page_title) }
  end


  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'One-a-day' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"



  end

   describe "Help page" do
    before { visit help_path }
    let(:heading) { 'Help' }
    let(:page_title) { ' | Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading) { 'About' }
    let(:page_title) { ' | About' }

    it_should_behave_like "all static pages"
  end


  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: 'About'
    click_link "Help"
    page.should have_selector 'title', text: 'Help'
    click_link "Home"
    page.should have_selector 'title', text: ''
    click_link "Sign up now!"
    page.should have_selector 'title', text: 'Sign Up'
  end
end
