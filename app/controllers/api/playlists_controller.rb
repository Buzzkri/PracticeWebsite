class Api::PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :update, :destroy]

  def index
    render json: Playlist.all
  end

  def show
    render json: @playlist
  end

  def create
    playlist = Playlist.create(playlist_params)
    if playlist.save
      render json: playlist
    else
      render json playlist.errors, status: 422
    end
  end

  def update
    if @playlist.update(playlist_params)
      render json: @playlist
    else
      render json @playlist.errors, status: 422
    end
  end

  def destroy
    @playlist.destroy
  end

  private
  def set_department
    @playlist = Playlist.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(:title)
  end

end
