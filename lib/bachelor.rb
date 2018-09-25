require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = ""
  if data.keys.include?(season)
    data.each do |given_season, contestants|
      if given_season == season
      contestants.each do |contestant_hash|
          if contestant_hash["status"] == "Winner"
            winner << contestant_hash["name"].split.shift
            break
          else
            next
          end
        end
      end
      end
   end
winner
end

def get_contestant_name(data, occupation)
  contestant = ""
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        contestant << contestant_hash["name"]
    end
  end
end
contestant
end

def count_contestants_by_hometown(data, hometown)
  contestant_collection = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        contestant_collection += 1
    end
  end
end
  contestant_collection
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season, contestants|
    contestants.find do |contestant_hash|
      if contestant_hash["hometown"] == hometown
       occupation << contestant_hash["occupation"]
    end
  end
end
occupation
end

def get_average_age_for_season(data, season)
  ages = []
    data.each do |given_season, contestants|
      if given_season == season
      contestants.collect do |contestant_hash|
      ages << contestant_hash["age"].to_i
      end
      ages = ages.reduce(:+)/ages.size.to_f
      ages = ages.round
  end
end
  ages
end
