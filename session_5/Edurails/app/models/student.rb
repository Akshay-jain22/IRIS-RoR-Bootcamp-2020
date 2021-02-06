class Student < ApplicationRecord
    has_many :courses
    has_many :assignments, through: :courses
    validates :branch, inclusion: { :in => ["Computer Science and Engineering","Mechanical Engineering","Mining Engineering","Electronics and Communication Engineering"] }
    validates :roll_number_validation
end

# Roll Number = {Last two digits of admission year}{Branch code}{Three digit serial number}
def roll_number_validation
    if !(roll_number[0,2] == admission_year.split(//).last(2).join)
        errors.add(:roll_number,"must start with last two digits of admission year") 
    end

    if branch == "Computer Science and Engineering"
        branch_code = "CS"
    elsif branch == "Mechanical Engineering"
        branch_code = "ME"
    elsif branch == "Mining Engineering"
        branch_code = "MN"
    elseif branch == "Electronics and Communication Engineering"
        branch_code = "ECE"
    end

    if !(roll_number[2, branch_code.length] == branch_code)
        errors.add(:roll_number,"must contain branch code")
    end

    index = 2 + branch_code.length

    if !(roll_number[index..-1].length == 3 && !!(/\A\d+\z/.match(roll_number[index..-1])))
        errors.add(:roll_number,"must end with three digit serial number")
    end
end
