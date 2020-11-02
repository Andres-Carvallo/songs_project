class SongsController < ApplicationController
    skip_before_action :verify_authenticity_token 
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        redirect_to @song
    end

    private

    def song_params
        params.permit(:name, :author, :year, :genre)
    end
end
