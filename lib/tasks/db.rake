desc 'import teams csv'
task :import_teams => :environment do
  require 'csv'

  CSV.open('db/football_team.csv',
           'r:bom|utf-8',
           headers: true).each do |row|
    Team.create(name: row['Name']) if
        row['Name']
  end
end