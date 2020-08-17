class EnglishUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :email, uniqueness: true
    validates :password, length: { minimum: 6, message: "must be more than or equal to 6 characters" }
    validates :password_confirmation
    validates :selfy
    validates :sex_id
    validates :prefecture_id
    validates :how_old
  end
end


# validates :phone_number, length: { maximum: 11, message: "must be less than or equal to 11 characters" }, format: { with: /\A[0-9]+\z/, message: "should not include -" }
