require 'spec_helper'

describe Game do
  fixtures :teams

  it 'requires a home and away team' do
    subject.should_not be_valid
    subject.home_team = teams(:ballshevicks)
    subject.away_team = teams(:ballshevicks)
    subject.should be_valid
  end
end