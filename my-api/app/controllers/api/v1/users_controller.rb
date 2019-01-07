class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all 
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        if @user 
            render json: @user
        else
            render json: 
            {
                error: 'User not found'
            }
        end
    end

    def create
        @user = User.find_or_create_by(username: params[:username])
        if @user 
            render json: @user 
        else
            render json: 
            {
                error: 'Unable to create user'
            }, status: 400
        end
    end

    def destroy
        @user = User.find_by(id: params[:id])
        if @user 
            @user.delete()
            render json: {message: 'User sucessfully deleted'}
        else
            render json: {error: 'User does not exist'}, status: 400
        end
    end

    def addsounds
        @usersound = UserSound.create(user_id: params[:user_id], sound_id: params[:sound_id])
        render json: {message: 'Succcessfully addded a neww song',
                    sound_id: Sound.find_by(id: params[:sound_id])
    }

    end

    private
    def user_params
        params.require(:user).permit(:username)
    end
end
