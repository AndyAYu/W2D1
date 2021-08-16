require "byebug"

class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, k | hash[k] = [] }
    end
  
    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(hire_str)
        @teachers << hire_str
    end

    def enroll(stud_str)
        if @student_capacity > @students.length
            @students << stud_str
            return true
        elsif @student_capacity <= @students.length
            return false
        end
    end

    def enrolled?(str)
        if @students.include?(str)
            return true
        else
            return false
        end
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(stud_str, grade_num)
        # debugger
        if enrolled?(stud_str)
        @grades[stud_str] << grade_num
            return true
        else
            return false
        end
        # Hash.new { |hash, stud_str| hash[stud_str] = grade_num }
    end

    def num_grades(stud_str)
        @grades[stud_str].length
    end

    def average_grade(stud_str)
        if enrolled?(stud_str) && num_grades(stud_str) > 0
           return @grades[stud_str].sum / num_grades(stud_str)
        elsif !enrolled?(stud_str) || num_grades(stud_str) == 0 
            return nil
        end
    end
end
