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
  {:name => "Arizona Cardinals", :code=>"ARI", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "San Francisco 49ers", :code=>"SF", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Seattle Seahawks", :code=>"SEA", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "St. Louis Rams", :code=>"STL", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("West").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Dallas Cowboys", :code=>"DAL", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "New York Giants", :code=>"NYG", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Philadelphia Eagles", :code=>"PHI", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Washington Redskins", :code=>"WAS", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("East").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Atlanta Falcons", :code=>"ATL", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Carolina Panthers", :code=>"CAR", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "New Orleans Saints", :code=>"NO", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Tampa Bay Buccaneers", :code=>"TB", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("South").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Chicago Bears", :code=>"CHI", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Detroit Lions", :code=>"DET", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Green Bay Packers", :code=>"GB", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Minnesota Vikings", :code=>"MIN", :division_id => Conference.find_by_name("NFC").divisions.find_by_name("North").id, :conference_id => Conference.find_by_name("NFC").id},
  {:name => "Baltimore Ravens", :code=>"BAL", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Cincinnati Bengals", :code=>"CIN", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Cleveland Browns", :code=>"CLE", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Pittsburgh Steelers", :code=>"PIT", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("North"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Houston Texans", :code=>"HOU", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Indianapolis Colts", :code=>"IND", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Jacksonville Jaguars", :code=>"JAC", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Tennessee Titans", :code=>"TEN", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("South"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Buffalo Bills", :code=>"BUF", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Miami Dolphins", :code=>"MIA", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "New England Patriots", :code=>"NE", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "New York Jets", :code=>"NYJ", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("East"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Denver Broncos", :code=>"DEN", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Kansas City Chiefs", :code=>"KC", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "Oakland Raiders", :code=>"OAK", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
  {:name => "San Diego Chargers", :code=>"SD", :division_id => Conference.find_by_name("AFC").divisions.find_by_name("West"), :conference_id => Conference.find_by_name("AFC").id},
].each do |attributes|
  Team.find_or_create_by_name(attributes)
end

puts "Teams created #{Team.count}"

Week.create(:nfl_week => 1, :start_date => Date.parse("2012-09-05"), :end_date => Date.parse("2012-09-10"))

[{:week_id => 1, :away_team_id => Team.find_by_code("DAL").id, :home_team_id => Team.find_by_code("NYG").id},
  {:week_id => 1, :away_team_id => Team.find_by_code("IND").id, :home_team_id => Team.find_by_code("CHI").id}
].each do |attributes|
  Schedule.create(attributes)
end

