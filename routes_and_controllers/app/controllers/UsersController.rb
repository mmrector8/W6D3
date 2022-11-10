class UsersController < ApplicationController
    def index
       #render plain: "Our names are Nathan and Morgan!"
       render json: params
    end

      def create
       render json: params
    end

    def show
        render json: params
    end
end

# '/users?some_category[a_key] = another+value & 
# some_category[a_second_key] = yet+another+value & 
# some_category[inner_inner_hash][key] = value & 
# something_else=aaahhhhh'