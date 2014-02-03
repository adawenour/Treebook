class ActivitesController < ApplicationController
  def index
friend_ids = current_user.friend.map(&:id)

  end
end
