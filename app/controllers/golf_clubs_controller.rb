class GolfClubsController < ApplicationController
  def index
    @golf = GolfClub.all
  end
end
