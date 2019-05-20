class CoursesController < ApplicationController
    
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

    def copyrecord
        org = Course.find(params[:id])
        @copied = org.dup
        @copied.user_id = current_user.id
        @copied.save
        # puts @copied.title + "、だね"
        redirect_to :root
    end
    
    
    private
    def course_params
        params.require(:course).permit(:title, :place, :map, :detail, :distance, :racord_date).merge(user_id: current_user.id)
    
    end
   
   
   helper_method :copyrecord 

end
