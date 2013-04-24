require 'spec_helper'

describe 'Purchasing a ticket' do
  fixtures :teams, :games

  it 'should require sign in' do
    visit games_path
    click_on 'Buy a ticket'
    click_on 'Sign up'

  end
end