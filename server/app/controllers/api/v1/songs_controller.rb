class Api::V1::SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :destroy]

  # GET /songs
  def index
    @songs = Song.all

    render json: @songs
  end

  # GET /songs/1
  def show
    render json: @song
  end

  # POST /songs
  def create
    @song = Song.new(song_params)

    if @song.save
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
  end

  def search
    @q = Song.ransack title_cont: params[:q]
    @songs = @q.result   
    render json: @songs
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find_by id: params[:id], title: params[:title]
    end

    # Only allow a trusted parameter "white list" through.
    def song_params
      params.permit(:artist_id, :url, :title, :content, :length, :album_id, :user_id, :country, :approved, :picture)
    end
end
