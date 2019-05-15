class ReportsController < ApplicationController
    
    def index
        @course = Course.all

    end

    def new
        @course = Course.find(params[:course_id])
        @report = Report.new
        @report.course_id = @course.id
    end
    
    def create
        Report.create(report_params)
        redirect_to "/courses"
    end
    
    private
    def report_params
    #   params.require(:report).permit(:photo, :caption, :post).merge(:course_id)
       params.require(:report).permit(:photo, :caption, :post, :course_id)
    end
    
end
