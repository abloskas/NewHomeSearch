class HomesController < ApplicationController
  def index
  end

  def show
    @home = Community.all
  end

  def map
  end
end
