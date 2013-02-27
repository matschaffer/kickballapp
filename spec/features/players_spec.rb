require 'spec_helper'

describe 'Adding a player' do
  fixtures :teams, :users

  before do
    sign_in
  end

  it 'requires a last name' do
    visit players_path
    click_link "New Player"
    fill_in "First name", with: "Mat"
    click_button "Create Player"

    error_message = "Last name can't be blank"
    page.should have_content error_message
  end

  it "can include a team", js: true do
    visit players_path
    click_link "New Player"
    fill_in "First name", with: "Mat"
    fill_in "Last name", with: "Schaffer"
    select "Ballshevicks", from: "Team"
    click_on "Create Player"

    page.should have_content "successful"
  end
end