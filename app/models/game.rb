class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  belongs_to :venue
  attr_accessible :starts_at, :home_score, :away_score, :home_team_id, :home_team, :away_team_id, :away_team, :venue_id, :venue

  validates :home_team, :away_team, presence: true

  def home_team_name
    home_team && home_team.name
  end

  def away_team_name
    away_team && away_team.name
  end

  def venue_name
    venue && venue.name
  end
end
