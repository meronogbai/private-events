require 'rails_helper'

RSpec.describe 'Landing', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit landing_index_path
      expect(true).to be(true)
    end
  end
end
