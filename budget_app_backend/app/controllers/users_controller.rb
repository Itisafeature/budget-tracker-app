class UsersController < ApplicationController


    def index
        @users = User.all
        render json: @users, status: :ok 
    end

    def new
        @user = User.new
    end
end
