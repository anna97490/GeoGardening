class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lists

  validates :email, :nickname, :user_location, presence: true
  validates :email, format: { with: /\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b/ }, uniqueness: true
end
