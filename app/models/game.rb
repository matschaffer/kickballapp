class Game < ActiveRecord::Base
  belongs_to :home_team
  belongs_to :away_team
  belongs_to :venue
  attr_accessible :starts_at
end
