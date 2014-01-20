class CreateSongs < ActiveRecord::Migration
  def change
    create_table :song do |t|
      t.string :title
      t.string :artist
      t.string :bpm
      t.string :ucs_id
    end
  end
end
