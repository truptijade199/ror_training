class V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json:{
            data: {
                users: @users,
                count: @users.length
            }
        }
    end
end
