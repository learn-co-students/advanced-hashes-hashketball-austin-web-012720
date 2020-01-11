require 'pry'

def game_hash
  data = {
        home: {
            team_name: 'Brooklyn Nets',
            colors: ["Black","White"],
            players: [{
              player_name: 'Alan Anderson',
              number: 0,
              shoe: 16, 
              points: 22,
              rebounds: 12, 
              assists: 12,
              steals: 3, 
              blocks: 1,
              slam_dunks: 1
            },
            {
              player_name: 'Reggie Evans',
              number: 30,
              shoe: 14, 
              points: 12,
              rebounds: 12, 
              assists: 12,
              steals: 12, 
              blocks: 12,
              slam_dunks: 7
            },
            {
              player_name: 'Brook Lopez',
              number: 11,
              shoe: 17, 
              points: 17,
              rebounds: 19, 
              assists: 10,
              steals: 3, 
              blocks: 1,
              slam_dunks: 15
            },
            {
              player_name: 'Mason Plumlee',
              number: 1,
              shoe: 19, 
              points: 26,
              rebounds: 11, 
              assists: 6,
              steals: 3, 
              blocks: 8,
              slam_dunks: 5
            },
            {
              player_name: 'Jason Terry',
              number: 31,
              shoe: 15, 
              points: 19,
              rebounds: 2, 
              assists: 2,
              steals: 4, 
              blocks: 11,
              slam_dunks: 1
            }
            ]
        }, 
        away: {
            team_name: 'Charlotte Hornets',
            colors: ["Turquoise", "Purple"],
            players: [{
              player_name: 'Jeff Adrien',
              number: 4,
              shoe: 18, 
              points: 10,
              rebounds: 1, 
              assists: 1,
              steals: 2, 
              blocks: 7,
              slam_dunks: 2
            },
            {
              player_name: 'Bismack Biyombo',
              number: 0,
              shoe: 16, 
              points: 12,
              rebounds: 4, 
              assists: 7,
              steals: 22, 
              blocks: 15,
              slam_dunks: 10
            },
            {
              player_name: 'DeSagna Diop',
              number: 2,
              shoe: 14, 
              points: 24,
              rebounds: 12, 
              assists: 12,
              steals: 4, 
              blocks: 5,
              slam_dunks: 5
            },
            {
              player_name: 'Ben Gordon',
              number: 8,
              shoe: 15, 
              points: 33,
              rebounds: 3, 
              assists: 2,
              steals: 1, 
              blocks: 1,
              slam_dunks: 0
            },
            {
              player_name: 'Kemba Walker',
              number: 33,
              shoe: 15, 
              points: 6,
              rebounds: 12, 
              assists: 12,
              steals: 7, 
              blocks: 5,
              slam_dunks: 12
            }
            ]
  }
  }
data
end


def num_points_scored(player_name)
  data_hash = game_hash
  score = 0
  data_hash.each do |first_key, team|
    team[:players].each do |players_data|
        if players_data[:player_name] == player_name
          score = players_data[:points]
        end

                        end
                 end
score
end

def shoe_size(player_name)
  size = 0
    game_hash.each do |first_key, team|
    team[:players].each do |players_data|
        if players_data[:player_name] == player_name
           size = players_data[:shoe]
        end
                        end
                 end
  size
end

def team_colors(team_name)
  color = []
  game_hash.each do |first_key,team|
    if team[:team_name] == team_name
      color = team[:colors]
    end
                 end
color
end

def team_names
  names = []
  game_hash.each do |first_key, team|
    names << team[:team_name]
                 end
  names
end

def player_numbers(team_name)
  numbers = []
    game_hash.each do |first_key, team|
    team[:players].each do |players_data|
        if team[:team_name] == team_name
           numbers << players_data[:number]
        end
                        end
                 end
  numbers
end

def player_stats(player_name)
  stats = {}
    game_hash.each do |first_key, team|
    team[:players].each do |players_data|
        if players_data[:player_name] == player_name
           stats = players_data.tap { |data| data.delete(:player_name) }
           #binding.pry
        end
                        end
                 end
  stats
end

def get_rebounds(player_name)
  rebounds = 0
    game_hash.each do |first_key, team|
    team[:players].each do |players_data|
        if players_data[:player_name] == player_name
           rebounds = players_data[:rebounds]
        end
                        end
                 end
  rebounds
end

def big_shoe_rebounds
  shoe_sizes = []
  rebounds = []
  game_hash.each do |first_key, team|
    team[:players].each do |players_data|
        shoe_sizes << shoe_size(players_data[:player_name])
        rebounds << get_rebounds(players_data[:player_name])
                end
                        end
  index = shoe_sizes.index(shoe_sizes.compact.max)
  rebounds[index]
end

def most_points_scored
  points = []
  names = []
  game_hash.each do |first_key, team|
    team[:players].each do |players_data|
      points << num_points_scored(players_data[:player_name])
      names <<  players_data[:player_name]
                        end
                 end
   index = points.index(points.compact.max)
   names[index]
end

def winning_team
  total_points = []
  names = team_names
  game_hash.each do |first_key, team|
    points = 0
    team[:players].each do |players_data|
      points += players_data[:points]
                        end
    total_points << points
                 end
  index = total_points.index(total_points.compact.max)
  names[index]
end

def player_with_longest_name
  names = []
  names_length = []
  
  game_hash.each do |first_key, team|
    team[:players].each do |players_data|
      names_length << players_data[:player_name].length
      names << players_data[:player_name]
                        end
                 end
  index = names_length.index(names_length.compact.max)
  names[index]
end

def most_steals
  steals = []
  names = []
  game_hash.each do |first_key, team|
    team[:players].each do |players_data|
      steals << players_data[:steals]
      names <<  players_data[:player_name]
                        end
                 end
   index = steals.index(steals.compact.max)
   names[index]
end

def long_name_steals_a_ton?
  if long_name = player_with_longest_name == most_steals
    true
  else
    puts "ERROR"
  end
end