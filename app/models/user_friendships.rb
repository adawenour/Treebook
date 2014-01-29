class UserFriendships < ActiveRecord::Base
	
	belongs_to :User

	belongs_to :friend, class_name: "User", foreign_key: 'friend_id'


end
