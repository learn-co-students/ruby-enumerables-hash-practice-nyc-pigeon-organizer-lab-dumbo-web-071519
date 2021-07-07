def nyc_pigeon_organizer(data)
  # write your code here!
  names_sort = data.reduce({}) do |memo, (current_attribute, values)|
    # attribute of pigeon( color, gender, or lives)
    #iterate over value hash and get pigeon names
    values.each do |(attribute_modifier, pigeon_array)|
      pigeon_array.each do |pigeon|
        #if current pigeon doesn't exist in hash, create it and assign accordingly
        if !memo.key?(pigeon)
          memo[pigeon] = {
            current_attribute => [attribute_modifier.to_s]
          }
        #if current pigeon exists, and attribute exists
        elsif memo[pigeon][current_attribute]
          memo[pigeon][current_attribute].push(attribute_modifier.to_s)
        #if current pigeon exists and attribute does NOT exist
        else
          memo[pigeon][current_attribute] = [attribute_modifier.to_s]
        end
      end
    end
    #return memo
    memo
  end
  p names_sort
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
nyc_pigeon_organizer(pigeon_data)
