class HomesController < ApplicationController
  def index
  end

  def show
    @home = Community.all
  end

  def map
  end

  def likes
    Like.create(user:current_user, community:Community.find(params[:community_id]))
    redirect_to "/homes/show"
  end
end
