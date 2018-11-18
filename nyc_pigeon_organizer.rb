require "pry"
def nyc_pigeon_organizer(data)
  organizedPigeons = {}
  data.each do |keys, keyValues|
      keyValues.each do |keys2, names|
        names.each do |name|
        if organizedPigeons[name] == nil
          organizedPigeons[name] = {keys => [keys2.to_s]}
        elsif organizedPigeons[name][keys] == nil
          organizedPigeons[name][keys] = [keys2.to_s]
        else
          organizedPigeons[name][keys] << keys2.to_s
        end
      end
    end
  end
  organizedPigeons
end
