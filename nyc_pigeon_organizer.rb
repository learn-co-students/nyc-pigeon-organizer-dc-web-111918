require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, value|
    value.each do |attri_val, names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {attribute => [attri_val.to_s]}
        elsif !pigeon_list[name][attribute]
          pigeon_list[name][attribute] = [attri_val.to_s]
        else
          pigeon_list[name][attribute] << attri_val.to_s
        end
      end
    end
  end
  return pigeon_list
end