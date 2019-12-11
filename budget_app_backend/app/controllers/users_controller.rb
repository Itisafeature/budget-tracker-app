class UsersController < ApplicationController
    before_action :authorize_request, except: :create

    def index
        @users = User.all
        render json: @users, status: :ok 
    end

    def new
        @user = User.new
    end

    def show
        render json: @user, status: :ok
    end
end
