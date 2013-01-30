class Team < ActiveRecord::Base
  has_many :players
  attr_accessible :hometown, :name
end
