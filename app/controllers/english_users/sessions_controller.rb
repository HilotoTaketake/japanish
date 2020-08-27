class EnglishUsers::SessionsController < ApplicationController
# class EnglishUsers::SessionsController < Devise::SessionsController

  def index
    @english_user = EnglishUser.new
  end

  def new
    @english_user = EnglishUser.new
  end

  def create
    @english_user = EnglishUser.find_by(name: params[:name], email: params[:email])
    if @english_user
      redirect_to english_users_path(id: current_english_user)
    else
      render 'new'
    end
  end
  
  def destroy
    redirect_to english_user_index_session_path
  end

end



