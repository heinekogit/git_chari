class TopController < ApplicationController


    def index
        @official = Course.where(user_id: 4)
    end 
    


end
