class EnglishUsers::RegistrationsController < ApplicationController

  def new
    @english_user = EnglishUser.new
  end

  def create
    @english_user = EnglishUser.new(english_user_params)
    if @english_user.save
      redirect_to root_path
    else
      render :new
    end
  end
end

private

def english_user_params
  params.permit(:name, :email, :password, :password_confirmation, :selfy, :sex_id, :prefecture_id, :how_old, :topic_1, :topic_2, :topic_3, :introduction)
end



