class JapaneseUsers::SessionsController < ApplicationController

  def index
    @japanese_user = JapaneseUser.all
  end

  def new
    @japanese_user = JapaneseUser.new
  end
  
  def destroy
    redirect_to japanese_user_index_session_path(@japanese_user)
  end

end
