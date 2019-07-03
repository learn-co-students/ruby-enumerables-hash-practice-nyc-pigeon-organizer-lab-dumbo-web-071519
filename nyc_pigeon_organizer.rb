def nyc_pigeon_organizer(data)
  data.keys.reduce({}) {|memo, category|
  
    data[category].each{|(key, val)|
    
      val.each{|pigeon_name|
      
        ### if the pigeon doesn't have an existing entry, add it
        if !memo.include?(pigeon_name)
          memo[pigeon_name] = { category => ["#{key.to_s}"] }
        else
          
          ### push new value in existing category entry
          if memo[pigeon_name][category]
            memo[pigeon_name][category].push("#{key.to_s}")
          ### else, create a new entry with the new value
          else 
             memo[pigeon_name][category] = ["#{key.to_s}"]
          end
          
        end
      }
    }
    p memo
  }
end