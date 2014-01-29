class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates :profile_name, presence: true

  has_many :statuses
  has_many :user_friendships
  has_many :friends, through: :user_friendships


end




