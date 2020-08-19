class SongsController < ApplicationController
  before_action :set_playlist
  before_action :set_song, only: [:show, :update, :destroy]

  def index
    render json: @playlist.items
  end

  def show
    render json: @song
  end

  def create
    song = @playlist.items.new(song_params)
    if song.save
      render json: song
    else
      render json song.errors, status: 422
    end
  end

  def update
    if @song.update(song_params)
      render json: @song
    else
      render json @song.errors, status: 422
    end
  end

  def destroy
    @song.destroy
  end

  private
  def set_song
    @song = Item.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :album, :release_year, :genre)
  end

  def set_playlist
    @playlist = Playlist.find(params[playlist.id])
  end
end
