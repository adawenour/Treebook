class Comment < ActiveRecord::Base
	belongs_to :statuses
end
