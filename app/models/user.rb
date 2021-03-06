class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :comments
  has_many :avatars
  # has_many :scores
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
