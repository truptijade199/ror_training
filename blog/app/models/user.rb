class User < ApplicationRecord
    validates :user_name, presence: true
    validates :email, uniqueness: true
    validates :mobile, numericality: {only_integer:true}, presence: true, uniqueness: true, length: {is: 10}
    after_save :success_msg
    has_many :post
    has_many :post_comment

    private
    def success_msg
        puts "Yor are successfully registered, welcome to our website!"
    end
end
