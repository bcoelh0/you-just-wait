class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    render plain: "Hello"
  end
end
