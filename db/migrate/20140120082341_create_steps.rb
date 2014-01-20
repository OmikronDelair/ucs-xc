class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :user_id
      t.integer :song_id
      t.string :video_url
      t.string :attachment
    end
  end
end
