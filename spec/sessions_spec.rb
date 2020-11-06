require 'rails_helper'

RSpec.describe 'Session', type: :system do
  describe 'login' do
    before(:each) do
      visit login_path
    end
    it 'logs in valid user' do
      fill_in 'session[username]', with: 'helloo'
      sleep 7
    end
    it 'fills clicks submit button' do
      click_button 'commit'
    end
  end
end
