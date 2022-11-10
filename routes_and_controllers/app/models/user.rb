class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    attr_accessor :name, :email
    
end