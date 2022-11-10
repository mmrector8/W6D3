class UsersController < ApplicationController
    def index
       #render plain: "Our names are Nathan and Morgan!"
       users = User.all
       render json: users
    end
    

    def create
        user = User.new(user_params)
       if user.save!
        render json: user 
       else
        render json: user.errors.full_messages, status: 422
       end
    end

    def show
        render json: params
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
end
