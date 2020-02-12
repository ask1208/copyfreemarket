class SignupsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:user1, :user2, :create]

  def user1
    @user = User.new
  end

  def user2
    @user = User.new
    # if verify_recaptcha(model: @user)
    # else
    #   render '/signups/user1'
    # end
  end

 
  def new
    
  end
  
  

  private
  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :birth_year,
      :birth_month,
      :birth_day,
      :phone_number
    )
  end
end