class HomeController < ApplicationController
  def index
    UserNotifier.send_signup_email().deliver
    render json: {test: 'hello'}
  end
end
