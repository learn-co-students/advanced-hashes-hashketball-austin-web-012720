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
                       :blocks => 1
                      },
                      { :player_name => "Reggie Evans" ,
                       :number => 30,
                       :shoe => 14,
                       :points => 12,
                       :rebounds => 12,
                       :assists => 12,
                       :steals => 12,
                       :blocks => 12
                      },
                      {:player_name => "Brook Lopez" ,
                       :number => 11 ,
                       :shoe => 17,
                       :points => 17,
                       :rebounds => 19,
                       :assists => 10,
                       :steals => 3,
                       :blocks => 1
                      },
                      {:player_name => "Mason Plumlee",
                       :number => 1,
                       :shoe => 19,
                       :points => 26,
                       :rebounds => 11,
                       :assists => 6,
                       :steals => 3,
                       :blocks => 8
                      },
                      {:player_name =>"Jason Terry",
                       :number => 31,
                       :shoe => 15,
                       :points => 19,
                       :rebounds => 2,
                       :assists => 2,
                       :steals => 4,
                       :blocks => 11
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
                       :blocks => 7 
                      },
                     {:player_name => "Bismack Biyombo",
                       :number => 0,
                       :shoe => 16,
                       :points => 12,
                       :rebounds => 4,
                       :assists => 7,
                       :steals => 22,
                       :blocks =>  15
                      },
                      {:player_name => "DeSagna Diop",
                       :number => 2,
                       :shoe => 14,
                       :points => 24,
                       :rebounds => 12,
                       :assists => 12,
                       :steals => 4,
                       :blocks => 5 
                      },
                      {:player_name => "Ben Gordon",
                       :number => 8,
                       :shoe => 15,
                       :points => 33,
                       :rebounds => 3,
                       :assists => 2,
                       :steals => 1,
                       :blocks => 1
                      },
                      {:player_name => "Kemba Walker",
                       :number => 33,
                       :shoe => 15,
                       :points => 6,
                       :rebounds => 12,
                       :assists => 12,
                       :steals => 7,
                       :blocks => 5
                      }
                    ]
                 }
              }


home_player_array = []
player_hash = {}

#game_hash[:home][:players].each do |i|
#p game_hash[:home][:players][i][:shoe]
#end
#game_hash[:home][:players].each do |i|

game_hash[:home][:players].reduce ({}) do |memo, pair|
home_player_array << pair
memo
end

home_player_array[0][:player_name]


#end
#player_array

# [{player_hash[pair[1][:player_name]] = pair[1] pair[1][:number], pair[1][shoe], pair[1][:points], pair[1][:rebounds], pair[1][:assists], pair[1][:steals], pair[1][:blocks]

  #data.reduce ({}) do |memo, pair|
   # emoticons[:get_meaning][pair[1][1]] = pair[0]
  #  emoticons[:get_emoticon][pair[1][0]] = pair[1][1]
#    memo
#   end