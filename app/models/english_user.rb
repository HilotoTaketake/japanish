class EnglishUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :sex
  has_one_attached :selfy

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


