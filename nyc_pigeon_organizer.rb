def nyc_pigeon_organizer(data)
  new_hash = {}
    data.each{|key_atr, value_atr| 
    value_atr.each{|key_param, value_param| 
    value_param.each{|i|
      if !new_hash[i]
        new_hash[i] = {key_atr => [key_param.to_s]}
      elsif new_hash[i][key_atr]
        new_hash[i][key_atr].push(key_param.to_s)
      elsif !new_hash[i][key_atr]
        new_hash[i][key_atr] = [key_param.to_s]
      end
      }
     }
    }
new_hash
end
