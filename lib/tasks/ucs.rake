namespace :ucs do
  desc "TODO"
  task import_songs: :environment do
    require 'csv'

    ucs_list = File.read("#{Rails.root}/ucs_list.csv")
    songs = CSV.parse(ucs_list, headers: true)
    songs.each do |song|
      Song.create!(song.to_hash)
    end
  end

end
