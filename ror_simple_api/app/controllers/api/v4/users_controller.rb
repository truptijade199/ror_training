class Api::V4::UsersController < ApplicationController
    def index
        @users = User.all
        render json:{
            data:{ opt = { each_serializer: Api::V1::UsersSerializer, root:nil }.merge({})
                        ActiveModelSerializers::SerializableResource.new(users, opts) if users
            },
            message: "User fetched using json serializers"
        }
    end
end
