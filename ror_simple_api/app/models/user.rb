class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :mobile, uniqueness: true
end
