class HelloWorldController < ApplicationController
  def index
    @user = User.find(sessions[:user_id])
  end
end
