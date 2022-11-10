class UsersController < ApplicationController
    def index
       #render plain: "Our names are Nathan and Morgan!"
       users = User.all
       render json: users
    end

    def create
        user = User.new(user_params)
       if user.save!
            redirect_to user_url(user.id)
       else
            render json: user.errors.full_messages, status: :unprocessable_entity
       end
       render json: user
    end

    def show
        render json: params
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end
end

# '/users?some_category[a_key] = another+value & 
# some_category[a_second_key] = yet+another+value & 
# some_category[inner_inner_hash][key] = value & 
# something_else=aaahhhhh'