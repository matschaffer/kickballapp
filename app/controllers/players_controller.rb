class PlayersController < ApplicationController

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find(params[:id])

    if request.xhr?
      render @player
    end
  end
end
