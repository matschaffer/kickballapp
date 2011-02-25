Before do
  trotter = Player.create(:name => "Trotter")
  ballshevicks = Team.create(:name => "Ballshevicks")
  ballshevicks.players << trotter
end