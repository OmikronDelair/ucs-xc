class SongsController < ApplicationController
  include GfxLists
  expose :song, attributes: :song_params
  expose :songs

  def index
  end

  def show
  end

  def new
  end

  def create
    if song.save(song_params)
      flash[:notice] = 'Song has been created successfully.'
      redirect_to song_path song.id
    else
      flash[:error] = 'Something went wrong. Try again.'
      redirect_to new_song_path
    end
  end

  def edit
  end

  def update
    if song.update_attributes(song_params)
      flash[:notice] = 'Song has been edited successfully.'
      redirect_to song_path song.id
    else
      flash[:error] = 'Something went wrong. Try again.'
      redirect_to edit_song_path song.id
    end
  end

  def destroy
    if song.destroy
      flash[:notice] = 'Song has been destroyed sucessfully.'
      redirect_to songs_path
    else
      flash[:error] = 'Something went wrong. Try again.'
      redirect_to songs_path
    end
  end

  private

  def song_params
    params.require(:song).permit(:title,:artist,:bpm,:delay,:ucs_id)
  end
end
