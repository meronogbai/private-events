require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SessionsHelper. For example:
#
# describe SessionsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SessionsHelper, type: :helper do
  describe '#signed_in?' do
    it 'returns false if not signed in' do
      session[:user_id] = nil
      expect(signed_in?).to be false
    end

    it 'checks if sign in' do
      session[:user_id] = 1
      expect(signed_in?).to be true
    end
  end
  describe '#current_user' do
    it 'returns current_user if signed in' do
      session[:user_id] = 1
      expect(current_user).to eq User.find_by(id: session[:user_id])
    end

    it 'returns nil if user not signed in' do
      session[:user_id] = nil
      expect(current_user).to eq User.find_by(id: session[:user_id])
    end
  end
end
