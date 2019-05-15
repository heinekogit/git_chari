class Report < ApplicationRecord

    has_one_attached :photo
    
    belongs_to :course
    
end
