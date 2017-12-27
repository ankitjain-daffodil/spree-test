class HomeController < ApplicationController
  def index
    UserNotifierMailer.send_signup_email().deliver
    render json: {test: 'hello'}
  end
end
