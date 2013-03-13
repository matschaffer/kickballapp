class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :first_name, :last_name, :number, :team_id

  validates :first_name, :last_name, presence: true

  scope :heavy_hitters,
        where('home_runs > ?', 40)
  scope :top_ten, order('home_runs desc').
      limit(10)

  def team_name
    team.name if team
  end
end
