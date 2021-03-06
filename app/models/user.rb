class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :favorites
  has_many :js_frameworks, through: :favorites
  has_many :comments
  has_many :ratings
  has_many :messages
  has_many :chatrooms, through: :messages
end
