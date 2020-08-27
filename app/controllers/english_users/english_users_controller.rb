class EnglishUsers::EnglishUsersController < ApplicationController

  def index
    @sex = Sex.all
    @prefecture = Prefecture.all
    @english_user = EnglishUser.find(params[:id])
  end
  
end
