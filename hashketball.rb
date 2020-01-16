# Write your code here!
def game_hash 
  gamehash = {:home => {:team_name => "Brooklyn Nets",
    :colors => ['Black','White'],
    :players => [{:player_name => "Alan Anderson", 
      number: 0 ,
      shoe: 16,
      points: 22,
      rebounds: 12,
      assists: 12,
      steals: 3,
      blocks: 1,
      slam_dunks: 1  },
      {:player_name => "Reggie Evans" , 
      number: 30 ,
      shoe: 14,
      points: 12,
      rebounds: 12 ,
      assists: 12 ,
      steals: 12,
      blocks: 12 ,
      slam_dunks: 7},
      {:player_name => "Brook Lopez" , 
      number: 11,
      shoe: 17,
      points: 17,
      rebounds: 19,
      assists: 10 ,
      steals: 3 ,
      blocks: 1 ,
      slam_dunks: 15},
      {:player_name => "Mason Plumlee" , 
      number: 1 ,
      shoe: 19,
      points: 26,
      rebounds: 11,
      assists: 6,
      steals: 3,
      blocks: 8,
      slam_dunks: 5},
      {:player_name => "Jason Terry" , 
      number: 31,
      shoe: 15,
      points: 19 ,
      rebounds: 2,
      assists: 2,
      steals: 4,
      blocks: 11,
      slam_dunks: 1}
    ]},
  :away => {:team_name => "Charlotte Hornets",
    :colors => ['Turquoise', 'Purple'],
    :players => [{:player_name => "Jeff Adrien" , 
      number: 4 ,
      shoe: 18 ,
      points: 10  ,
      rebounds: 1,
      assists: 1,
      steals: 2,
      blocks: 7,
      slam_dunks: 2},
      {:player_name => "Bismack Biyombo", 
      number: 0,
      shoe: 16,
      points: 12,
      rebounds: 4,
      assists: 7,
      steals: 22,
      blocks: 15,
      slam_dunks: 10},
      {:player_name => "DeSagna Diop" , 
      number: 2,
      shoe: 14,
      points: 24,
      rebounds: 12,
      assists: 12,
      steals: 4,
      blocks: 5,
      slam_dunks: 5},
      {:player_name => "Ben Gordon" , 
      number: 8,
      shoe: 15,
      points: 33,
      rebounds: 3,
      assists: 2,
      steals: 1,
      blocks: 1,
      slam_dunks: 0},
      {:player_name => "Kemba Walker" , 
      number: 33,
      shoe: 15,
      points: 6,
      rebounds: 12,
      assists: 12,
      steals: 7,
      blocks: 5,
      slam_dunks: 12}
      
      ]}
    
  
    
  }
  return gamehash # end of gamehash
end
def num_points_scored(player_name)
  gamehash = game_hash
  
  score = 0 
 
    player_index = 0 
    while player_index < gamehash[:home][:players].length do 
       
      if player_name == gamehash[:home][:players][player_index][:player_name]
      score = gamehash[:home][:players][player_index][:points]
      elsif player_name == gamehash[:away][:players][player_index][:player_name]
      score = gamehash[:away][:players][player_index][:points]
      end
      player_index += 1 
    end
  return score
end
def shoe_size(player_name)
    gamehash = game_hash
  row_index = 0 
  ss = 0 
 
    player_index = 0 
    while player_index < gamehash[:home][:players].length do 
       
      if player_name == gamehash[:home][:players][player_index][:player_name]
      ss = gamehash[:home][:players][player_index][:shoe]
      elsif player_name == gamehash[:away][:players][player_index][:player_name]
      ss = gamehash[:away][:players][player_index][:shoe]
      end
      player_index += 1 
    end
  return ss
end
def team_colors(team_name)
  gamehash = game_hash
   gamehash[:home].each{ |key, value|
     if value == team_name
       return gamehash[:home][:colors]
     end
   }
   gamehash[:away].each{ |key, value|
     if value == team_name
       return gamehash[:away][:colors]
     end
   }
  
  
end
def team_names
  gamehash = game_hash
  names = []
  names << gamehash[:home][:team_name]
  names << gamehash[:away][:team_name]
  
  return names
end

def player_numbers(team_name)
  gamehash = game_hash
  jerseyarr = []
  if team_name == gamehash[:home][:team_name]
    gamehash[:home][:players].each{ |player|
    jerseyarr << player[:number]}
  elsif team_name == gamehash[:away][:team_name]
    gamehash[:away][:players].each{ |player|
    jerseyarr << player[:number]}
  end
  return jerseyarr
end
def player_stats(player_name)
  gamehash = game_hash
  playerstat = {}
  player_index = 0 
    while player_index < gamehash[:home][:players].length do 
       
      if player_name == gamehash[:home][:players][player_index][:player_name]
      
      gamehash[:home][:players][player_index].each{|key, value| next if key == :player_name
       playerstat[key] = value}
      
      elsif player_name == gamehash[:away][:players][player_index][:player_name]
      
       gamehash[:away][:players][player_index].each{|key, value| next if key == :player_name
       playerstat[key] = value}
      
      end
      player_index += 1 
    end
    return playerstat
end 

def big_shoe_rebounds
  gamehash = game_hash
  # incorporate last method to return stats of guy with lasrgest shoe size 
  # compare player_index[:shoe].max
  bigshoename = ""
 # i = 0 
 # while i < gamehash[:home][:players].length do 
  #  shoesize = 0
  #  if shoesize < gamehashgamehash[:home][:players][i][:shoe]
  #  shoesize = gamehashgamehash[:home][:players][i][:shoe]
  #  elsif shoesize < gamehash[:away][:players][i][:shoe]
  #  shoesize = gamehashgamehash[:home][:players][i][:shoe]
  #  end
 # i += 1 
  #end
  if (gamehash[:home][:players].max_by{|i| i[:shoe]}[:shoe] >     gamehash[:away][:players].max_by{|i| i[:shoe]}[:shoe])
    
     bigshoename = gamehash[:home][:players].max_by{|i| i[:shoe]}[:player_name]
  else 
     bigshoename = gamehash[:away][:players].max_by{|i| i[:shoe]}[:player_name]
  end
  
 return player_stats(bigshoename)[:rebounds]

end
def most_points_scored
  gamehash = game_hash

 mostpointsname = ""

  if (gamehash[:home][:players].max_by{|i| i[:points]}[:points] > gamehash[:away][:players].max_by{|i| i[:points]}[:points])
    
     mostpointsname = gamehash[:home][:players].max_by{|i| i[:points]}[:player_name]
  else 
     mostpointsname = gamehash[:away][:players].max_by{|i| i[:points]}[:player_name]
  end
  
 return mostpointsname
end

def winning_team
  gamehash = game_hash
  points1 = 0
  points2 = 0 
  gamehash[:home][:players].each{|i| points1 += i[:points]}
  gamehash[:away][:players].each{|i| points2 += i[:points]}
  if points1 > points2 
    return gamehash[:home][:team_name]
  else
    return gamehash[:away][:team_name]
  
end

end
def player_with_longest_name
   gamehash = game_hash

    longestname = ""
  pp gamehash[:home][:players].max_by{|i| i[:player_name].length}
  if (gamehash[:home][:players].max_by{|i| i[:player_name].length} > gamehash[:away][:players].max_by{|i| i[:player_name].length})
    
     longestname = gamehash[:home][:players].max_by{|i| i[:player_name].length}[:player_name]
  else 
     longestname = gamehash[:away][:players].max_by{|i| i[:player_name].length}[:player_name]
    end
 return longestname
end
def long_name_steals_a_ton?
  gamehash = game_hash
  longest_name = player_with_longest_name
  
  
    if (gamehash[:home][:players].max_by{|i| i[:steals]}[:steals] > gamehash[:away][:players].max_by{|i| i[:steals]}[:steals])
    
     moststealsname = gamehash[:home][:players].max_by{|i| i[:steals]}[:player_name]
  else 
     moststealsname = gamehash[:away][:players].max_by{|i| i[:steals]}[:player_name]
  end
  if longest_name == moststealsname
    return true
  else
    false 
  end
end
