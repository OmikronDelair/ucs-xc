class Song < ActiveRecord::Base
  has_many :steps

  validates_presence_of :title, :artist, :bpm, :ucs_id
  validates_uniqueness_of :ucs_id
end
