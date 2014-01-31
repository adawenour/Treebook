class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates :profile_name, presence: true

  has_many :statuses 
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  acts_as_follower
acts_as_followable

has_many :albums
has_many :pictures

end



