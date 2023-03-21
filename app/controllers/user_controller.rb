class UserController < ApplicationController
    def show
        user = User.find_by(id: params[:user_id])
        if user
            render json: user
        else 
            render json: {error: "Not Authorized"}, status: :unauthorized
        end
    end
end
