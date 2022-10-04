class Api::V3::UsersController < ApplicationController
    #Fetch only id and email in json
    def index
        @users = User.all
        render json:{
            data: {
                users: @users.as_json(only: [:id, :email])
            },
            message: "Only User id, email fetched."
        }
    end
end
