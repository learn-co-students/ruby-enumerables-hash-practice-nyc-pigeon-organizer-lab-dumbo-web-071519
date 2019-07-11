def nyc_pigeon_organizer(data)
  # write your code here!
  hash={}
  data.each do |key, value|
    value.each do |details, name|
      names.each do |name|
        if hash[name]
          hash[name] ={}
        end
      if hash[name][key]
        hame[name]=[]
      end
      hash[name][key] << details.to_s
      
end
