class JapaneseUsers::JapaneseUsersController < ApplicationController

  def index
    @sex = Sex.find(params[:id])
    @prefecture = Prefecture.find(params[:id])
    @japanese_user = JapaneseUser.find(params[:id])
  end
  
end
