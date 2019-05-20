class UsersController < ApplicationController
    
    def show
        @nickname = current_user.nickname
        # @courses = Course.where(user_id: current_user.id).order('updated_at DESC').page(params[:page]).per(5)
        @courses = Course.where(user_id: current_user.id).order('updated_at DESC')
    end
    
    def edit
        @user = User.find(current_user.id)
    end
    
    def update
        user = User.find(current_user.id)
        user.update(user_params)
        redirect_to :root
    end
    
    private
    def user_params
    #   params.require(:user).permit(:nickname, :image)
       params.require(:user).permit(:nickname)
    end
    
end
