class Game < ActiveRecord::Base
  belongs_to :location
  belongs_to :home_team, :class_name => "Team"
  belongs_to :away_team, :class_name => "Team"
end
