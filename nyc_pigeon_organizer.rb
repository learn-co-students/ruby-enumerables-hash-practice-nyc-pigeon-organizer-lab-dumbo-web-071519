def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |property, hash|
  hash.each do |ele, array|
  array.each do |name| 
    
if !new_hash.has_key?(name)
      new_hash[name] = {}
    end 
    
    if !new_hash[name].has_key?(property)
      new_hash[name][property] = []
    end
    
    if !new_hash[name][property].include?(ele)
      new_hash[name][property] << ele.to_s 
    end 
  end 
end 
end

new_hash
end
