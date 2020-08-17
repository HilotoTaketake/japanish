class JapaneseUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :email, uniqueness: true
    validates :password, length: { minimum: 6 }
    validates :password_confirmation, confirmation: true
    validates :selfy
    validates :sex_id
    validates :prefecture_id
    validates :how_old
  end
 
end
