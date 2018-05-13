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

  def destroy
    p "1================="
    p (params[:id])
    p Community.find(params[:id])
    @like = Like.find_by(user:current_user, community:Community.find(params[:id]))
    @like.destroy if @like
    redirect_to '/homes/show'
  end
end

