class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :first_name, :last_name, :number
end
