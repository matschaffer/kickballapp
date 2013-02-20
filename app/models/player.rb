class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :first_name, :last_name, :number, :team_id

  validates :first_name, :last_name, presence: true

  def team_name
    team.name if team
  end
end
