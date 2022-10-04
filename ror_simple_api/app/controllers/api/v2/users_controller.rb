class Api::V2::UsersController < ApplicationController
    def index
        @users = User.all
        render json:{
            data: {
                users: @users,
                count: @users.length
            },
            message: "Users list"
        }
    end
end
