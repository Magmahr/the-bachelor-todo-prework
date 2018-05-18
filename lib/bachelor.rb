def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner << contestant["name"]
    end 
  end  
  winner.split.first
end

def get_contestant_name(data, occupation)
  job = ""
  data.each do |season, contestant|
    contestant.each do |attribute|
      if attribute["occupation"] == occupation
        job << attribute["name"]
      end 
    end
  end 
  job
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant|
    contestant.each do |attribute|
      if attribute["hometown"] == hometown
        count += 1
      end 
    end
  end 
  count
end

def get_occupation(data, hometown)
  job = []
  data.each do |season, contestant|
    contestant.each do |attribute|
      if attribute["hometown"] == hometown
        job << attribute["occupation"]
      end 
    end
  end 
  job[0]
end

def get_average_age_for_season(data, season)
  age = []
  contestant_count = 0
  data[season].each do |contestant|
      if contestant["age"]
        age << contestant["age"].to_i
        contestant_count += 1
      end
  end 
  total = 0.0
  age.each do |num|
    total += num
  end
  avg_age = total / contestant_count.to_f
  avg_age.round
  
end
