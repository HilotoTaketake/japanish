class EnglishUsers::SessionsController < ApplicationController

  def index
    @english_user = EnglishUser.new
  end

  def new
    @english_user = EnglishUser.new
  end

  def create
    @english_user = EnglishUser.find_by(name: params[:name], email: params[:email])
    if @english_user
      bypass_sign_in(@english_user)
      redirect_to index_english_user_registration_path(id: current_english_user)
    else
      render 'new'
    end
  end
  
  def destroy
    redirect_to english_user_sessions_index_path(id: current_english_user)
    # redirect_to root_path
  end

end



