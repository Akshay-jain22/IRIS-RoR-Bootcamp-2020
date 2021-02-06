class Assignment < ApplicationRecord
    validates :weightage, numericality: { greater_than: 0, less_than_or_equal_to: 50 }
    validate :deadline_validation
end

def deadline_validation 
    if DateTime.now > deadline
        errors.add(:deadline,"is over")
    end  
end