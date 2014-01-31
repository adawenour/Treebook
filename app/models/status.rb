class Status < ActiveRecord::Base
	belongs_to :user
	belongs_to :document
	has_many :comments

end
