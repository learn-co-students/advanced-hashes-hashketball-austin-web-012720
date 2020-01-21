require 'pp'

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {
          :player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        {
          :player_name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        {
          :player_name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        {
          :player_name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        {
          :player_name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {
          :player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        {
          :player_name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
        {
          :player_name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        {
          :player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        {
          :player_name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        }
      ]
    }
  }
  return game_hash
end

def num_points_scored(player_name)
  points_scored = 0
  
  #The | operator joins both away and home players into one array
  players_array = game_hash[:home][:players] | game_hash[:away][:players]
  
  for each in players_array
    if each[:player_name] == player_name
      points_scored = each[:points]
    end
  end
  
  return points_scored
end

def shoe_size(player_name)
  size = 0
  players_array = game_hash[:home][:players] | game_hash[:away][:players]
  
  for each in players_array
    if each[:player_name] == player_name
      size = each[:shoe]
    end
  end
  
  return size
end

def team_colors(team_name)
  team_colors = []
  
  if team_name == game_hash[:home][:team_name]
    team_colors = game_hash[:home][:colors]
  else
    team_colors = game_hash[:away][:colors]
  end
  
  return team_colors
end
  
def team_names
  return [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(team_name)
  player_numbers = []
  
  if team_name == game_hash[:home][:team_name]
    for each in game_hash[:home][:players]
      player_numbers.push(each[:number])
    end
  else
    for each in game_hash[:away][:players]
      player_numbers.push(each[:number])
    end
  end
  
  return player_numbers
end

def player_stats(player_name)
  stats = {}
  players_array = game_hash[:home][:players] | game_hash[:away][:players]
  
  for each in players_array
    if player_name == each[:player_name]
      each.delete(:player_name)
      stats = each
    end
  end
  
  return stats
end

def big_shoe_rebounds
  shoe = 0
  rebounds = 0
  players_array = game_hash[:home][:players] | game_hash[:away][:players]
  
  for each in players_array
    if each[:shoe] > shoe
      shoe = each[:shoe]
      rebounds = each[:rebounds]
    end
  end
  
  return rebounds
end

def most_points_scored
  points = 0
  player = ""
  players_array = game_hash[:home][:players] | game_hash[:away][:players]
  
  for each in players_array
    if each[:points] > points
      points = each[:points]
      player = each[:player_name]
    end
  end
  
  return player
end

def winning_team
  home_points = 0
  away_points = 0
  winner = ""
  
  for each in game_hash[:home][:players]
    home_points += each[:points]
  end
  for each in game_hash[:away][:players]
    away_points += each[:points]
  end
  
  if home_points > away_points
    winner = game_hash[:home][:team_name]
  else 
    winner = game_hash[:away][:team_name]
  end
  
  return winner
end
  
def player_with_longest_name
  length = 0
  name = ""
  players_array = game_hash[:home][:players] | game_hash[:away][:players]
  
  for each in players_array
    temp_length = each[:player_name].length
    if temp_length > length
      name = each[:player_name]
      length = name.length
    end
  end
  
  return name 
end

def long_name_steals_a_ton?
  long_steals = 0 
  max_steals = 0
  most_steals = false
  long_name = player_with_longest_name
  players_array = game_hash[:home][:players] | game_hash[:away][:players]

  for each in players_array
    if each[:player_name] == long_name
      long_steals = each[:steals]
    end
  end
  
  for each in players_array
    if each[:steals] > max_steals
      max_steals = each[:steals]
    end
  end
  
  if long_steals == max_steals
    most_steals = true
  end
  
  return most_steals
end 