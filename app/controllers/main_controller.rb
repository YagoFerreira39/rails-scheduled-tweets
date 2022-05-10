class MainController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    else
      redirect_to sign_up_path
    end
  end
end