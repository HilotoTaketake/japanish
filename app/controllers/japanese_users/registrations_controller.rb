class JapaneseUsers::RegistrationsController < Devise::RegistrationsController

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

  private

  def japanese_user_params
    params.require(:japanese_user).permit(:name, :email, :password, :password_confirmation, :selfy, :sex_id, :prefecture_id, :how_old, :topic_1, :topic_2, :topic_3, :introduction)
  end

end
