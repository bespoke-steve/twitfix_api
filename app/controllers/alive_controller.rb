class AliveController < ApplicationController
  def index
    render json: "alive"
  end
end
