class TeamPlayersController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @player = @team.players.build
  end
end
