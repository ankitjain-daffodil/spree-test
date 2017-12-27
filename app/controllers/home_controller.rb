class HomeController < ApplicationController
  def index
    UserNotifierMailer.send_signup_email().deliver_later
    HardWorker.perform_async('bob', 5)
    render json: {test: 'hello'}
  end
end
