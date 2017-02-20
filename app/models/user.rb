class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs
  validates :username, uniqueness: true, presence: true
  validates :password, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :weapon, uniqueness: true, presence: true
end
