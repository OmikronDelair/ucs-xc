class AddDelayToSongs < ActiveRecord::Migration
  def change
   add_column :songs, :delay, :string
  end
end
