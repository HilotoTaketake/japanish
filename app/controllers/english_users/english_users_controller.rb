class EnglishUsers::EnglishUsersController < ApplicationController

  def index
    @sex = Sex.all
    @prefecture = Prefecture.all
    @english_user = EnglishUser.find(params[:id])
    # @english_user = EnglishUser.all
  end
  
end
