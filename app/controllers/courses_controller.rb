class CoursesController < ApplicationController
    
    def index
        @course = Course.all
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
    
    
    private
    def course_params
        params.require(:course).permit(:title, :place, :map, :detail, :distance, :racord_date)
    
    end
    

end
