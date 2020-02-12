class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatabledef active_for_authentication?
      super && confirmed?
       end
     
       def inactive_message
         confirmed? ? super : :needs_confirmation
       end



         validates :nickname, presence: true
         VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
         validates :email, format: {with: VALID_EMAIL_REGEX}, allow_blank: true
         validates :email, presence: true
         

         
end
