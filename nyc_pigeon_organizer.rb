
def nyc_pigeon_organizer(data)
  organized_pigeons = {}
    data.each do |key, value|
      value.each do |stat, name|
        name.each do |pigeon|
          organized_pigeons[pigeon] ||= {}
          organized_pigeons[pigeon][key] ||= []
          organized_pigeons[pigeon][key] << stat.to_s
        end #name each
      end #value each
    end #data each
  return organized_pigeons
end #method
