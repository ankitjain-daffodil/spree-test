class HomeController < ApplicationController
  def index
    UserNotifierMailer.send_signup_email().deliver_later
    render json: {test: 'hello'}
  end
end
