class EnglishUsers::RegistrationsController < ApplicationController

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

  def destroy
    @english_user = EnglishUser.find(params[:id])
    @english_user.destroy
    redirect_to root_path
  end
  
end

private

def english_user_params
  params.require(:english_user).permit(:name, :email, :password, :password_confirmation, :selfy, :sex_id, :prefecture_id, :how_old, :topic_1, :topic_2, :topic_3, :introduction)
end



