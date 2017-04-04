require 'spec_helper'
require './spec/support/devise_support'
include Warden::Test::Helpers

feature 'User creates post' do
before(:each) do  
  user = FactoryGirl.create :user
    login_as user, scope: :user
 end 
  scenario 'with valid data' do
    visit new_post_path

     element = page.find_by_id('post_title')
    element.set("My title")
    element = page.find_by_id('post_body')
    element.set("My body")
    find('[name=commit]').click

    
    
    expect(page).to have_content 'My body'
  end
end