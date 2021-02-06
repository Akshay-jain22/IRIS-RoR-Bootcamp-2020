# Associations and Validations

## Tasks

- A student has name, branch, admission year, e-mail and roll number.

    In 'db/schema.rb' - 
    ```ruby
    create_table "students", force: :cascade do |t|
        t.string "name"
        t.string "branch"
        t.string "admission_year", limit: 4
        t.string "email"
        t.string "roll_number"
        t.datetime "created_at", precision: 6, null: false
        t.datetime "updated_at", precision: 6, null: false
    end
    ```

- A course has name, course code, branch, year, credits. 

    In 'db/schema.rb' - 
    ```ruby
    create_table "courses", force: :cascade do |t|
        t.string "name"
        t.string "course_code"
        t.string "branch"
        t.string "year", limit: 4
        t.integer "credits"
        t.datetime "created_at", precision: 6, null: false
        t.datetime "updated_at", precision: 6, null: false
    end
    ```


- An assignment has name, submission deadline, weightage. 

    In 'db/schema.rb' - 
    ```ruby
    create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.datetime "deadline"
    t.integer "weightage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    end
    ```

- A student can register for many courses. 

    In 'app/models/student.rb' -
    ```ruby
    has_many :courses
    ```

- A course can have many students. 

    In 'app/models/course.rb' -
    ```ruby
    has_many :students
    ```

- A course has many assignments.

    In 'app/models/course.rb' -
    ```ruby
    has_many :assignments
    ```

- A student can upload files for assignments for their registered courses.

    In 'app/models/student.rb' -
    ```ruby
    has_many :assignments, through: :courses
    ```

- The only branches offered are `Computer Science and Engineering`,
  `Mechanical Engineering`, `Mining Engineering` and `Electronics and
  Communication Engineering`. 

    In 'app/models/student.rb' -
    ```ruby
    validates :branch, inclusion: { :in => ["Computer Science and Engineering","Mechanical Engineering","Mining Engineering","Electronics and Communication Engineering"] }
    ```
    In 'app/models/course.rb' -
    ```ruby
    validates :branch, inclusion: { :in => ["Computer Science and Engineering","Mechanical Engineering","Mining Engineering","Electronics and Communication Engineering"] }
    ```

- The roll numbers follow same format as NITK: `#{Last two digits of admission year}#{Branch code}#{Three digit serial number}`.

    In 'app/models/student.rb' -
    ```ruby
    validates :roll_number_validation
    ```
    ```ruby
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
    ```

- A course code follows format: `#{Branch code}#{Three digit course number}`.

    In 'app/models/course.rb' -
    ```ruby
    validates :course_code_validation
    ```
    ```ruby
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
    ```

- A course can have maximum of six credits.

    In 'app/models/course.rb' -
    ```ruby
    validates :credits, numericality: { greater_than: 0, less_than_or_equal_to: 6 }
    ```

- An assignment can have a maximum weightage of 50%.

    In 'app/models/assingment.rb' -
    ```ruby
    validates :weightage, numericality: { greater_than: 0, less_than_or_equal_to: 50 }
    ```

- A student cannot submit assignments after the submission deadline.

    In 'app/models/assignment.rb' -
    ```ruby
    validate :deadline_validation
    ```
    ```ruby
    def deadline_validation 
        if DateTime.now > deadline
            errors.add(:deadline,"is over")
        end  
    end
    ```