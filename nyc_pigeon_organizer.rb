def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |first, hash|
    hash.each do |symbol, array|
      array.each do |x|
        if new_hash.include?(x) == true && first != :color
          new_hash[x].store(first, [symbol.to_s])
        elsif new_hash.include?(x) == true && first == :color
          new_hash[x][:color] << symbol.to_s
        else
          new_hash[x] = {first => [symbol.to_s]}
        end
      end
    end
  end
  new_hash
end
