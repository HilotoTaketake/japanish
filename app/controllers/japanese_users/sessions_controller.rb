class JapaneseUsers::SessionsController < ApplicationController

  def index
    @japanese_user = JapaneseUser.new
  end

  def new
    @japanese_user = JapaneseUser.new
  end

  def create
    @japanese_user = JapaneseUser.find_by(name: params[:name], email: params[:email])
    if @japanese_user
      bypass_sign_in(@japanese_user)
      redirect_to index_japanese_user_registration_path(id: current_japanese_user)
    else
      render 'new'
    end
  end
  
  def destroy
    redirect_to japanese_user_index_session_path(id: current_japanese_user)
  end

end
