class HomeController < ApplicationController
  def index
    HardWorker.perform_async('bob', 5)
    render json: {test: 'hello'}
  end
end
