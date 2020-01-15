require 'pry'

def game_hash
  {:home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1},
       {:player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7},
        {:player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15},
        {:player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5},
       {:player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1},]
    },
   :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Purple", "Turquoise"],
      :players => [{
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2},
       {:player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10},
        {:player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5},
        {:player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0},
       {:player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12},] 
   }
  }
end

def team_names
 game_hash.collect do |key, value|
  value[:team_name]
 end
end

def num_points_scored(players_name)
 game_hash.each do |place, team|
   team.each do |attribute, data|
     if attribute == :players
       data.each do |player|
         if player[:player_name] == players_name
           return player[:points]
         end
       end
     end
   end
 end
end

def shoe_size(players_name)
  game_hash.each do |place, team|
    team.each do |attribute, data|
    if attribute == :players
      data.each do |player|
        if player[:player_name] == players_name
          return player[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |place, team|
    if team[:team_name] == name
      return team[:colors]
    end
  end
end

def player_stats(playerN)
  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:player_name] == playerN
        player.shift
        return player
      end
    end
  end
end

def big_shoe_rebounds
size = 0
rebounds = 0
  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:shoe] > size
      size = player[:shoe]
    rebounds = player[:rebounds]
      end
    end
  end
rebounds
end

def player_numbers(teamN)
  nums = []
  game_hash.each do |place, team|
    if team[:team_name] == teamN
      team[:players].each do |value|
      nums << value[:number]
      end
    end
  end  
  nums
end

def most_points_scored
points = 0
name = 0
  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:points] > points
      points = player[:points]
    name = player[:player_name]
      end
    end
  end
name
end

def winning_team
  nets = 0
  horns = 0
  game_hash[:home][:players].each do |player|
    nets += player[:points]
  end
  game_hash[:away][:players].each do |player|
    horns += player[:points]
  end
  if nets > horns
  return "Brooklyn Nets"
  else
  return "Charlotte Hornets"
  end
end

def player_with_longest_name
  array = []
  game_hash.each do |place, team|
    team[:players].each do |player|
    array << player[:player_name]
    end
  end
  array.max_by{|x| x.length}
end

def long_name_steals_a_ton?
  fuckin_yombo = 0
  steals = 0
  array = []
  game_hash.each do |place, team|
    team[:players].each do |player|
    array << player[:player_name]
    end
  end
  fuckin_yombo = array.max_by{|x| x.length}

  game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:player_name] == fuckin_yombo
      return true
      end
    end
  end
end
