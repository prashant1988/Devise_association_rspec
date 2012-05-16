require 'spec_helper'

describe "Emp" do
    describe "Index " do
    it "should have the h1 'Index'" do
      visit '/emp/index'
      page.should have_selector('h1', :text => 'Index')
    end
    end
  end

