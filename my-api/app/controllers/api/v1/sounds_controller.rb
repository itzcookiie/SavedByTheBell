class Api::V1::SoundsController < ApplicationController
    def index
        @sounds = Sound.all 
        render json: @sounds
    end

    def show
        @sound = Sound.find_by(id: params[:id])
        if @sound 
            render json: @sound
        else
            render json: 
            {
                error: 'Sound not found'
            }
        end
    end

    def create
        @sound = Sound.new(sound_params)
        if @sound 
            @sound.save
            render json: @sound 
        else
            render json: 
            {
                error: 'Unable to create sound'
            }, status: 400
        end
    end

    def destroy
        @sound = Sound.find_by(id: params[:id])
        if @sound 
            @sound.delete()
            render json: {message: 'Sound sucessfully deleted'}
        else
            render json: {error: 'Sound does not exist'}, status: 400
        end
    end

    private
    def sound_params
        params.require(:sound).permit(:title, :description, :audio_url)
    end
end
