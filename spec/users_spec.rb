require 'rails_helper'

RSpec.describe 'User', type: :system do
  describe 'new page' do
    before(:each) do
      visit users_new_path
    end
    it 'shows a sign up text' do
      expect(page).to have_content('Sign Up')
    end
    it 'has a Username input text field' do
      expect(page).to have_field('Username')
    end
    it 'has a button to with text Save User' do
      expect(page).to have_selector("input")
    end
  end
end
