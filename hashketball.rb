require "pry"

def game_hash()
  h = {home: {
              team_name: "Brooklyn Nets",
              colors: ["Black","White"],
              players: [ 
                {player_name: "Alan Anderson", number: 0, shoe:16, points:22, rebounds:12, assists:12, steals:3, blocks:1, slam_dunks:1},
                {player_name:"Reggie Evans",number: 30, shoe:14, points:12, rebounds:12, assists:12, steals:12, blocks:12, slam_dunks:7},
                {player_name: "Brook Lopez", number: 11, shoe:17, points:17, rebounds:19, assists:10, steals:3, blocks:1, slam_dunks:15},
                {player_name: "Mason Plumlee", number: 1, shoe:19, points:26, rebounds:11, assists:6, steals:3, blocks:8, slam_dunks:5},
                {player_name: "Jason Terry", number: 31, shoe:15, points:19, rebounds:2, assists:2, steals:4, blocks:11, slam_dunks:1}
                       ]
              }, 
              
       away: {
              team_name: "Charlotte Hornets",
              colors: ["Turquoise","Purple"],
              players: [
                {player_name: "Jeff Adrien", number:4, shoe:18, points:10, rebounds:1, assists:1, steals:2, blocks:7, slam_dunks:2},
                {player_name: "Bismack Biyombo", number:0, shoe:16, points:12, rebounds:4, assists:7, steals:22, blocks:15, slam_dunks:10},
                {player_name: "DeSagna Diop", number:2, shoe:14, points:24, rebounds:12, assists:12, steals:4, blocks:5, slam_dunks:5},
                {player_name: "Ben Gordon", number:8, shoe:15, points:33, rebounds:3, assists:2, steals:1, blocks:1, slam_dunks:0},
                {player_name: "Kemba Walker", number:33, shoe:15, points:6, rebounds:12, assists:12, steals:7, blocks:5, slam_dunks:12}
                      ]
             }
      }
end


def num_points_scored(name)
    h = game_hash()
    players = h[:home][:players]
    players.each do |n|
      if n[:player_name] == name
        return n[:points]
      end
    end
    players = h[:away][:players]
    players.each do |n|
      if n[:player_name] == name
        return n[:points]
      end
    end
end 

def shoe_size(name)
    h = game_hash()
    players = h[:home][:players]
    players.each do |n|
      if n[:player_name] == name
        return n[:shoe]
      end
    end
    players = h[:away][:players]
    players.each do |n|
      if n[:player_name] == name
        return n[:shoe]
      end
    end
end

def team_colors(team)
    h= game_hash()
    if h[:home][:team_name] == team
      return h[:home][:colors]
    elsif h[:away][:team_name] == team
      return h[:away][:colors]
    end
end 

def team_names()
    h = game_hash()
    a = []
    a << h[:home][:team_name]
    a << h[:away][:team_name]
    return a 
end

def player_numbers(team)
    h = game_hash() 
    a = []
    if h[:home][:team_name] == team
      players = h[:home][:players]
    elsif h[:away][:team_name] == team
      players = h[:away][:players]
    end
    
    players.each do |player|
        a << player[:number]
    
    end
      return a 
end

def player_stats(name)
    h = game_hash()
    stats = {}
    players = h[:home][:players]
    players.each do |n|
      if n[:player_name] == name
        stats = n
      end
    end
    players = h[:away][:players]
    players.each do |n|
      if n[:player_name] == name
        stats = n
        
      end
    end
    stats.delete(:player_name)
    return stats
end

def big_shoe_rebounds()
    largest = 0 
    rb = 0
    h = game_hash()
    players = h[:home][:players]
    players.each do |n|
      if n[:shoe] > largest
          largest = n[:shoe]
          rb = n[:rebounds]
      end
    end
    players = h[:away][:players]
    players.each do |n|
      if n[:shoe] > largest
          largest = n[:shoe]
          rb = n[:rebounds]
      end
    end
    return rb 
end 

def most_points_scored()
    mp = 0 
    player = ""
    h = game_hash()
    players = h[:home][:players]
    players.each do |n|
      if n[:points] > mp
          mp = n[:points]
          player = n[:player_name]
      end
    end
    players = h[:away][:players]
    players.each do |n|
      if n[:points] > mp
          mp = n[:points]
          player = n[:player_name]
      end
    end
    return player 
end

def winning_team()
    home = 0
    away = 0 
    h = game_hash()
    players = h[:home][:players]
    players.each do |n|
        home+= n[:points]
    end
    players = h[:away][:players]
    players.each do |n|
        home+= n[:points]
    end
    if home > away
      return h[:home][:team_name]
    elsif away > home
      return h[:away][:team_name]
    else 
      return "Tie"
    end
end

def player_with_longest_name()
    longest = 0 
    name = ""
    h = game_hash()
    players = h[:home][:players]
    players.each do |n|
      if n[:player_name].length > longest
          longest = n[:player_name].length
          name = n[:player_name]
      end
    end
    players = h[:away][:players]
    players.each do |n|
      if n[:player_name].length > longest
          longest = n[:player_name].length
          name = n[:player_name]
      end
    end
    return name
end

def long_name_steals_a_ton?()
    msteals = 0 
    name = ""
    h = game_hash()
    players = h[:home][:players]
    players.each do |n|
      if n[:steals] > msteals
          msteals = n[:steals]
          name = n[:player_name]
      end
    end
    players = h[:away][:players]
    players.each do |n|
      if n[:steals] > msteals
          msteals = n[:steals]
          name = n[:player_name]
      end
    end
    return true if (player_with_longest_name() == name)

end