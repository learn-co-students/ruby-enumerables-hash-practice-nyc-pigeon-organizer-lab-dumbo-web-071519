def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data.each do |key, value| 
    #puts "this is a key: #{key}. "
    #puts "this is a value: #{value}"
    value.each do |attribute, list|
      #puts "this #{key} is #{attribute}"
      list.each do |name|
        #puts "pigeons name is #{name}"
        if pigeons.has_key? name 
          puts "#{name} is in hash"
          if pigeons[name].has_key? key
            pigeons[name][key] << attribute.to_s
          else
            pigeons[name][key] = []
            pigeons[name][key] << attribute.to_s
          end
        else 
          puts "#{name} is not in hash"
          pigeons[name] = {}
          pigeons[name][key] = []
          pigeons[name][key] << attribute.to_s
        end
      end
    end
  end
  puts pigeons
  
  return pigeons
end
