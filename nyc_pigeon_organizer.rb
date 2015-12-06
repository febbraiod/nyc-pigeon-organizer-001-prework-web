require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}
  keys = data[:color].values.flatten.uniq

  keys.each do |name|
    pigeons[name] = {}
  end

  keys.each do |name|
    data.each do |qualitys, data_hash|
      quality_arr = []
      data_hash.each do |quality, names|
        if names.include?(name)
          quality_arr << quality.to_s
          pigeons[name][qualitys] = quality_arr
        end
      end
    end
  end

  pigeons
end
