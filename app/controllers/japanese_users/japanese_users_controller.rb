class JapaneseUsers::JapaneseUsersController < ApplicationController

  def index
    @sex = Sex.all
    @prefecture = Prefecture.all
    @japanese_user = JapaneseUser.find(params[:id])
  end
  
end
