class EnglishUsers::RegistrationsController < ApplicationController
# class EnglishUsers::RegistrationsController < Devise::RegistrationsController
  def new
    @english_user = EnglishUser.new
  end

  def create
    @english_user = EnglishUser.new(english_user_params)
    if @english_user.save
      bypass_sign_in(@english_user)
      redirect_to english_users_path(@english_user)
    else
      render :new
    end
  end

  def edit
    @english_user = EnglishUser.find(params[:id])
  end

  def update
    @english_user = EnglishUser.find(params[:id])
    if @english_user.update(english_user_params)
      bypass_sign_in(@english_user)
      redirect_to english_users_path(@english_user)
    else
      render :edit
    end
  end

  
end

private

def english_user_params
  params.require(:english_user).permit(:name, :email, :password, :password_confirmation, :selfy, :sex_id, :prefecture_id, :how_old, :topic_1, :topic_2, :topic_3, :introduction)
end





