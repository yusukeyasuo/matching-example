class TopController < ApplicationController
  def index
    return redirect_to :users if user_signed_in?
  end
end
