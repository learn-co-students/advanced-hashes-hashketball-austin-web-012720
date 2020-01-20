# Write your code here!
def game_hash 
  game_hash = {:home=> 
                {:team_name=> "Brooklyn Nets" ,
                 :colors=> 
                   ["Black" , 
                   "White" 
                   ],
                 :players=> 
                   [
                     { :player_name => "Alan Anderson",
                       :number =>  0,
                       :shoe =>  16,
                       :points =>  22,
                       :rebounds => 12,
                       :assists =>12,
                       :steals => 3,
                       :blocks => 1,
                       :slam_dunks => 1
                      },
                      { :player_name => "Reggie Evans" ,
                       :number => 30,
                       :shoe => 14,
                       :points => 12,
                       :rebounds => 12,
                       :assists => 12,
                       :steals => 12,
                       :blocks => 12,
                       :slam_dunks => 7
                      },
                      {:player_name => "Brook Lopez" ,
                       :number => 11 ,
                       :shoe => 17,
                       :points => 17,
                       :rebounds => 19,
                       :assists => 10,
                       :steals => 3,
                       :blocks => 1,
                       :slam_dunks => 15
                      },
                      {:player_name => "Mason Plumlee",
                       :number => 1,
                       :shoe => 19,
                       :points => 26,
                       :rebounds => 11,
                       :assists => 6,
                       :steals => 3,
                       :blocks => 8,
                       :slam_dunks => 5
                      },
                      {:player_name =>"Jason Terry",
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
               :away=> 
                 {:team_name=> "Charlotte Hornets" ,
                  :colors=> 
                    ["Turquoise" , 
                    "Purple"
                    ],
                  :players=> 
                    [
                      {:player_name => "Jeff Adrien",
                       :number => 4,
                       :shoe => 18,
                       :points => 10,
                       :rebounds => 1,
                       :assists => 1,
                       :steals => 2,
                       :blocks => 7,
                       :slam_dunks => 2 
                      },
                     {:player_name => "Bismack Biyombo",
                       :number => 0,
                       :shoe => 16,
                       :points => 12,
                       :rebounds => 4,
                       :assists => 7,
                       :steals => 22,
                       :blocks =>  15,
                       :slam_dunks => 10
                      },
                      {:player_name => "DeSagna Diop",
                       :number => 2,
                       :shoe => 14,
                       :points => 24,
                       :rebounds => 12,
                       :assists => 12,
                       :steals => 4,
                       :blocks => 5,
                       :slam_dunks => 5 
                      },
                      {:player_name => "Ben Gordon",
                       :number => 8,
                       :shoe => 15,
                       :points => 33,
                       :rebounds => 3,
                       :assists => 2,
                       :steals => 1,
                       :blocks => 1,
                       :slam_dunks => 0
                      },
                      {:player_name => "Kemba Walker",
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
end

def num_points_scored(name)
  consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
  consolidated_player_list
  player_stat_hash = {}

  consolidated_player_list.each do |player|
    key = player[:player_name]
    player_stat_hash[key] = player
  end

  points = 0
  player_stat_hash.each do |player|
    points = player[1][:points] if player[0] == name
  end
  points
end

def shoe_size(name)
  consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
  consolidated_player_list
  player_stat_hash = {}

  consolidated_player_list.each do |player|
    key = player[:player_name]
    player_stat_hash[key] = player
  end

  shoe = 0
  player_stat_hash.each do |player|
    shoe = player[1][:shoe] if player[0] == name
  end
  shoe
end

def player_stats(name)
  consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
  consolidated_player_list
  player_stat_hash = {}

  consolidated_player_list.each do |player|
    key = player[:player_name]
    player_stat_hash[key] = player
  end

  stats = {}
    player_stat_hash.each do |player|
    stats = player[1] if player[0] == name
  end
  stats.delete(:player_name)
  stats
end

def team_names
  names = []
  names << game_hash[:home][:team_name]
  names << game_hash[:away][:team_name]
  names
end

def team_colors(team_name)
  if game_hash[:home][:team_name] == team_name
    colors = game_hash[:home][:colors]
  else
    colors = game_hash[:away][:colors]
  end
  colors
end

def player_numbers(team_name)
  jersey_array = []
  if game_hash[:home][:team_name].include?(team_name)
    game_hash[:home][:players].reduce ({}) do |memo, pair|
      jersey_array << pair[:number]
      memo
    end
  else
    game_hash[:away][:players].reduce ({}) do |memo, pair|
      jersey_array << pair[:number]
      memo
    end
  end
  jersey_array
end

def big_shoe_rebounds
  consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
  consolidated_player_list
  player_stat_hash = {}

  consolidated_player_list.each do |player|
    key = player[:player_name]
    player_stat_hash[key] = player
  end

  player_names_array = []
  player_stat_hash.reduce ({}) do |memo, pair|
    player_names_array << pair[0]
  memo
  end

  player_big_shoe = player_names_array[0]
  player_names_array.each do |name|
    player_big_shoe = name if shoe_size(name) > shoe_size(player_big_shoe)
  end
  player_stat_hash[player_big_shoe][:rebounds]
 end
 
 # method below supports "most_points_scored" method
 
 def points(name)
   
   consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
   consolidated_player_list
   player_stat_hash = {}

   consolidated_player_list.each do |player|
     key = player[:player_name]
     player_stat_hash[key] = player
   end

    points = 0
    player_stat_hash.each do |player|
      points = player[1][:points] if player[0] == name
    end
  points
end
 
 def most_points_scored
   consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
   consolidated_player_list
   player_stat_hash = {}

  consolidated_player_list.each do |player|
    key = player[:player_name]
    player_stat_hash[key] = player
  end
   player_names_array = []
   player_stat_hash.reduce ({}) do |memo, pair|
    player_names_array << pair[0]
    memo
   end

   player_most_points = player_names_array[0]
   player_names_array.each do |name|
     player_most_points = name if points(name) > points(player_most_points)
   end
  player_most_points
 end

def winning_team
  
  home_total = 0
  away_total = 0
  
  #evaluate home team total
  home_player_list = game_hash[:home][:players]
  home_player_stat_hash = {}
  home_player_list.each do |player|
    key = player[:player_name]
    home_player_stat_hash[key] = player
  end

  home_player_stat_hash.each do |player|
    home_total += player[1][:points]
  end
  home_total

  #evaluate away team total
  away_player_list = game_hash[:away][:players]
  away_player_stat_hash = {}
  away_player_list.each do |player|
    key = player[:player_name]
    away_player_stat_hash[key] = player
  end

  away_player_stat_hash.each do |player|
    away_total += player[1][:points]
  end
  away_total
  # compare home versus away total
  if home_total > away_total
  winner = game_hash[:home][:team_name]
  else
  winner = game_hash[:home][:team_name]
  end
  winner
end

def player_with_longest_name
consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
   consolidated_player_list
   player_stat_hash = {}

  consolidated_player_list.each do |player|
    key = player[:player_name]
    player_stat_hash[key] = player
  end
   player_names_array = []
   player_stat_hash.reduce ({}) do |memo, pair|
    player_names_array << pair[0]
    memo
   end

   player_longest_name = player_names_array[0]
   player_names_array.each do |name|
     player_longest_name = name if name.size > player_longest_name.size
   end
  player_longest_name
end

def steals(name)
   #supports most_steals
   
   consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
   consolidated_player_list
   player_stat_hash = {}

   consolidated_player_list.each do |player|
     key = player[:player_name]
     player_stat_hash[key] = player
   end

    steals = 0
    player_stat_hash.each do |player|
      steals = player[1][:steals] if player[0] == name
    end
  steals
end

def most_steals
   consolidated_player_list = game_hash[:home][:players] + game_hash[:away][:players]
   consolidated_player_list
   player_stat_hash = {}

  consolidated_player_list.each do |player|
    key = player[:player_name]
    player_stat_hash[key] = player
  end
   player_names_array = []
   player_stat_hash.reduce ({}) do |memo, pair|
    player_names_array << pair[0]
    memo
   end

   player_most_steals = player_names_array[0]
   player_names_array.each do |name|
     player_most_steals = name if steals(name) > steals(player_most_steals)
   end
  player_most_steals
 end


def long_name_steals_a_ton?
  long_name = player_with_longest_name
   if long_name == most_steals
     true
   else
     false
   end
end

