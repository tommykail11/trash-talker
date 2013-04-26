# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
League.destroy_all
Division.destroy_all
Team.destroy_all


user = User.create(:name => 'Tommy Kail', :email => 'tommykail@example.com', :password => 'foobar', :password_confirmation => 'foobar')

league = League.create(name: 'NHL')

atlantic_division = Division.create(name: 'Atlantic', League_id: league)
central_division = Division.create(name: 'Central', League_id: league)
northeast_division = Division.create(name: 'Northeast', League_id: league)
northwest_division = Division.create(name: 'Northwest', League_id: league)
pacific_division = Division.create(name: 'Pacific', League_id: league)
southeast_division = Division.create(name: 'Southeast', League_id: league)

devils = Team.create(name: 'New Jersey Devils', Division_id: atlantic_division)
islanders = Team.create(name: 'New York Islanders', Division_id: atlantic_division)
rangers = Team.create(name: 'New York Rangers', Division_id: atlantic_division)
flyers = Team.create(name: 'Philadelphia Flyers', Division_id: atlantic_division)
penguins = Team.create(name: 'Pittsburgh Penguins', Division_id: atlantic_division)
blackhawks = Team.create(name: 'Chicago Blackhawks', Division_id: central_division)
bluejackets = Team.create(name: 'Columbus Bluejackets', Division_id: central_division)
redwings = Team.create(name: 'Detroit Red Wings', Division_id: central_division)
predators = Team.create(name: 'Nashville Predators', Division_id: central_division)
blues = Team.create(name: 'St. Louis Blues', Division_id: central_division)
bruins = Team.create(name: 'Boston Bruins', Division_id: northeast_division)
sabres = Team.create(name: 'Buffalo Sabres', Division_id: northeast_division)
canadians = Team.create(name: 'Montreal Canadians', Division_id: northeast_division)
senators = Team.create(name: 'Ottawa Senators', Division_id: northeast_division)
mapleleafs = Team.create(name: 'Toronto Maple Leafs', Division_id: northeast_division)
flames = Team.create(name: 'Calgary Flames', Division_id: northwest_division)
avalanche = Team.create(name: 'Colorado Avalanche', Division_id: northwest_division)
oilers = Team.create(name: 'Edmonton Oilers', Division_id: northwest_division)
wild = Team.create(name: 'Minnesota Wild', Division_id: northwest_division)
canucks = Team.create(name: 'Vancouver Canucks', Division_id: northwest_division)
mightyducks = Team.create(name: 'Anaheim Mighty Ducks', Division_id: pacific_division)
stars = Team.create(name: 'Dallas Stars', Division_id: pacific_division)
kings = Team.create(name: 'Los Angeles Kings', Division_id: pacific_division)
coyotes = Team.create(name: 'Phoenix Coyotes', Division_id: pacific_division)
sharks = Team.create(name: 'San Jose Sharks', Division_id: pacific_division)
hurricanes = Team.create(name: 'Carolina Hurricanes', Division_id: southeast_division)
panthers = Team.create(name: 'Florida Panthers', Division_id: southeast_division)
lighting = Team.create(name: 'Tampa Bay Lightning', Division_id: southeast_division)
capitals = Team.create(name: 'Washington Capitals', Division_id: southeast_division)
jets = Team.create(name: 'Winnipeg Jets', Division_id: southeast_division)

Micropost.create(content: 'We played an awesome game last night.', team_id: devils, user_id: user)
Micropost.create(content: 'No you guys played a horrible game.', team_id: devils, user_id: user)
Micropost.create(content: 'Line 3 has no heart', team_id: devils, user_id: user)
Micropost.create(content: 'We have the worst goalie in the world', team_id: devils, user_id: user)
Micropost.create(content: 'Come on bro, he was standing on his head.', team_id: devils, user_id: user)
Micropost.create(content: 'Eat at Joes', team_id: devils, user_id: user)
Micropost.create(content: 'Newark really isnt a hockey town', team_id: devils, user_id: user)
Micropost.create(content: 'I wish we still had Brodeur', team_id: devils, user_id: user)
Micropost.create(content: '5 mins in the penalty box seems like forever.', team_id: devils, user_id: user)







