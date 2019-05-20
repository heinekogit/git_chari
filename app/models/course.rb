class Course < ApplicationRecord
    

    has_many :reports
    belongs_to :user
    
end
