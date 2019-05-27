class CoursesController < ApplicationController

#   include ActionController::Cookies # ココを追記!
    
    def index
        # @course = Course.all
        @course = Course.all.order('created_at DESC')
    end
    
    def show
        @course = Course.find(params[:id])
        @reports = Report.where(course_id: @course.id)
    end
    
    def new
        @course = Course.new
    end
    
    def create
        Course.create(course_params)
        redirect_to :root
    end
    
    
    def edit
        @course = Course.find(params[:id])
        
    end
    
    def update
        course = Course.find(params[:id])
        course.update(course_params)
        redirect_to action: :show
    end
    
    

    def copyrecord
        org = Course.find(params[:id])
        @copied = org.dup
        @copied.user_id = current_user.id
        @copied.save
        # puts @copied.title + "、だね"
        if cookies[:trans1].present? then
            puts cookies[:trans1] + "、だよねだよね"
        else
            puts "ないんやけど"
        end
        
        redirect_to :root
    end
    
    
    private
    def course_params
        params.require(:course).permit(:title, :place, :map, :detail, :distance, :racord_date).merge(user_id: current_user.id)
    
    end
   
   
   helper_method :copyrecord 

end
