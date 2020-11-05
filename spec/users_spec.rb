require 'rails_helper'

RSpec.describe 'User', type: :system do
  describe 'signup page' do
    before(:each) do
      visit signup_path
    end
    it 'shows a sign up text' do
      expect(page).to have_content('Sign Up')
    end
    it 'has a Username input text field' do
      expect(page).to have_field('Username')
    end
    it 'has a button to with text Save User' do
      expect(page).to have_selector('input')
    end
  end

  describe 'submit form' do
    before(:each) do
      visit signup_path
    end
    it 'fills username field' do
      fill_in 'user[username]', with: 'Content'
    end
    it 'fills clicks submit button' do
      click_button 'commit'
    end
  end
end
