require 'spec_helper'

describe "StaticPages" do


  let (:base_title) {"EdWave"}

subject { page }

  describe "Home page" do
	before{ visit root_path }
    it { should have_selector('h1', :text => 'EdWave') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', :text => '| Home') }
  end


  describe "Help page" do
	  before { visit help_path }
    it{ should have_selector('h1', :text => 'Need Help?') }
    it { should have_selector('title', text: full_title(''))}

  end

  describe "About page" do
	  before { visit about_path }
    it{ should have_selector('h1', :text => 'About Us') }
    it{ should have_selector('title', text: full_title('')) }
  end

    describe "Contact Us" do
	    before { visit contact_path }
    it { should have_selector('h1', :text => 'Contact Us') }
    it{ should have_selector('title', text: full_title('')) }
  end

end
