class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: {data: {users: @users}, message: "Users List"}
    end
end
