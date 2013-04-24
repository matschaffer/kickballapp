require 'spec_helper'

describe 'Purchasing a ticket' do
  fixtures :teams, :games

  it 'should allow sign up' do
    visit games_path
    click_on 'Buy a ticket'
    click_on 'Sign up'
  end

  it 'should accept a credit card', js: true do
    visit games_path
    click_on 'Buy a ticket'
    fail 'See if we can actually automate the stripe purchase'
  end
end