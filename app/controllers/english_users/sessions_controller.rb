class EnglishUsers::SessionsController < ApplicationController

  def index
    @english_user = EnglishUser.all
  end

  def new
    @english_user = EnglishUser.new
  end
  
  def destroy
      redirect_to english_user_index_session_path(@english_user)
  end

end



