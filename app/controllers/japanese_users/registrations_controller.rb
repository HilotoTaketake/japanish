class JapaneseUsers::RegistrationsController < ApplicationController

  def new
    @japanese_user = JapaneseUser.new
  end

  def create
    @japanese_user = JapaneseUser.new(japanese_user_params)
    if @japanese_user.save
      bypass_sign_in(@japanese_user)
      redirect_to japanese_users_path(@japanese_user)
    else
      render :new
    end
  end

  def edit
    @japanese_user = JapaneseUser.find(params[:id])
  end

  def update
    @japanese_user = JapaneseUser.find(params[:id])
    if @japanese_user.update(japanese_user_params)
      bypass_sign_in(@japanese_user)
      redirect_to japanese_users_path(@japanese_user)
    else
      render :edit
    end
  end

  def destroy
    @japanese_user = JapaneseUser.find(params[:id])
    @japanese_user.destroy
    redirect_to root_path
  end

  private

  def japanese_user_params
    params.require(:japanese_user).permit(:name, :email, :password, :password_confirmation, :selfy, :sex_id, :prefecture_id, :how_old, :topic_1, :topic_2, :topic_3, :introduction)
  end

end
