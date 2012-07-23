# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Conference.create(:name => "NFC")
Conference.create(:name => "AFC")
puts "Conferences created - #{Conference.count} "

[{:name => "East", :conference_id => 1},{:name => "North", :conference_id => 1},
  {:name => "South", :conference_id => 1},{:name => "West", :conference_id => 1},
  {:name => "East", :conference_id => 2},{:name => "North", :conference_id => 2},
  {:name => "South", :conference_id => 2},{:name => "West", :conference_id => 2}
].each do |attributes|
  Division.create(attributes)
end
puts "Divisions created - #{Division.count}"

#Teaminformation
[
  {:name => "Cardinals", :code=>"ARI", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "49ers", :code=>"SF", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Seahawks", :code=>"SEA", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Rams", :code=>"STL", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Cowboys", :code=>"DAL", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Giants", :code=>"NYG", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Eagles", :code=>"PHI", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Redskins", :code=>"WAS", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Falcons", :code=>"ATL", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Panthers", :code=>"CAR", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Saints", :code=>"NO", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Buccaneers", :code=>"TB", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Bears", :code=>"CHI", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Lions", :code=>"DET", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Packers", :code=>"GB", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Vikings", :code=>"MIN", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Ravens", :code=>"BAL", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Bengals", :code=>"CIN", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Browns", :code=>"CLE", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Steelers", :code=>"PIT", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Texans", :code=>"HOU", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Colts", :code=>"IND", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Jaguars", :code=>"JAC", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Titans", :code=>"TEN", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Bills", :code=>"BUF", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Dolphins", :code=>"MIA", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Patriots", :code=>"NE", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Jets", :code=>"NYJ", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Broncos", :code=>"DEN", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Chiefs", :code=>"KC", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Raiders", :code=>"OAK", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Chargers", :code=>"SD", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
].each do |attributes|
  Team.find_or_create_by_name(attributes)
end

puts "Teams created #{Team.count}"

Week.create(:season_id => 1,:nfl_week => 1, :start_date => Date.parse("2012-09-05"), :end_date => Date.parse("2012-09-10"))

[{:week_id => 1, :away_team_id => Team.find_by_code("DAL").id, :home_team_id => Team.find_by_code("NYG").id},
  {:week_id => 1, :away_team_id => Team.find_by_code("IND").id, :home_team_id => Team.find_by_code("CHI").id}
].each do |attributes|
  Schedule.create(attributes)
end

Season.create(:name => "2012 - 2013 Season", :start_date => Date.parse("2012-09-01"), :end_date => Date.parse("2013-02-28"))

User.create(:email => "admin@example.com", :password => "password")
