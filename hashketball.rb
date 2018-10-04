require

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12, 
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1,
        },
      "Reggie Evans" => {
        :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12, 
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7,
      },
      "Brook Lopez" => {
        :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10, 
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15,
      },
      "Mason Plumlee" => {
        :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6, 
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5,
      },
      "Jason Terry" => {
        :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2, 
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1,
      }
    }
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1, 
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2,
      },
      "Bismak Biyombo" => {
        :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7, 
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10,
      },
      "DeSagna Diop" => {
        :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12, 
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5,
      },
      "Ben Gordon" => { 
        :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2, 
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0,
    },
    "Brendan Haywood" => { 
      :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12, 
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12,
  }
}
}
}
end 

def num_points_scored(player)
  all_players = game_hash[:home][:players].merge(game_hash[:away][:players])
  all_players[player][:points]
end 

def shoe_size(player)
  all_players = game_hash[:home][:players].merge(game_hash[:away][:players])
  all_players[player][:shoe]
end 

def team_colors(team) 
  game_hash.each do |name, value|
    if value[:team_name] == team 
      return value[:colors]
    end 
  end 
end 

def team_names 
  teams = [] 
  game_hash.each do |name, value| 
    value.each do |team_info, info|
      if team_info == :team_name 
        teams.push(info) 
      end 
    end 
  end 
  teams 
end 

def player_numbers(team)
  numbers = [] 
  game_hash.each do |name, value|
    if value[:team_name] == team 
      game_hash[name][:players].each do |player, stats|
        stats.each do |stat_label, stat_value| 
          if stat_label == :number 
            numbers << stat_value 
          end 
        end 
      end 
    end 
  end 
  numbers 
end 

def player_stats(player) 
  all_players = game_hash[:home][:players].merge(game_hash[:away][:players])
  all_players[player]
end 

def big_shoe_rebounds 
  all_players = game_hash[:home][:players].merge(game_hash[:away][:players])
  big_shoe = nil 
  shoe_rebound = nil 
  all_players.each do |player, stats|
    stats.each do |stat_label, stat_value|
      if stat_label == :shoe 
        if big_shoe == nil || big_shoe < :shoe 
          big_shoe = :shoe 
          shoe_rebound = stats[:rebounds] 
        end 
      end 
    end 
  end 
  shoe_rebound
end 

        
  





