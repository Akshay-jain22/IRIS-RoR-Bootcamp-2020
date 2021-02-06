class Course < ApplicationRecord
    has_many :students
    has_many :assignments
    validates :branch, inclusion: { :in => ["Computer Science and Engineering","Mechanical Engineering","Mining Engineering","Electronics and Communication Engineering"] }
    validates :course_code_validation
    validates :credits, numericality: { greater_than: 0, less_than_or_equal_to: 6 }
end

# course_code = {Branch code}{Three digit course number}
def course_code_validation
    if branch == "Computer Science and Engineering"
        branch_code = "CS"
    elsif branch == "Mechanical Engineering"
        branch_code = "ME"
    elsif branch == "Mining Engineering"
        branch_code = "MN"
    elseif branch == "Electronics and Communication Engineering"
        branch_code = "ECE"
    end

    if !(course_code[0, branch_code.length] == branch_code)
        errors.add(:course_code,"should begin with branch code")
    end

    index = branch_code.length

    if !(course_code[index..-1].length == 3 && !!(/\A\d+\z/.match(course_code[index..-1])))
        errors.add(:course_code,"must end with three digit course number")
    end
end