class JapaneseUsers::RegistrationsController < ApplicationController

  def new
    @japanese_user = JapaneseUser.new
  end

  def create
    @japanese_user = JapaneseUser.new(japanese_user_params)
    if @japanese_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def japanese_user_params
    params.permit(:name, :email, :password, :password_confirmation, :selfy, :sex_id, :prefecture_id, :how_old, :topic_1, :topic_2, :topic_3, :introduction)
  end

end
