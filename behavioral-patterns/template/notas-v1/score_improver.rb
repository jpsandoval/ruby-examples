class Student
    attr_accessor :score
    def initialize(s)
        @score = s
    end
end


class ScoreImprover
    def improve(students)
        maxScore = 1
        students.each do |student|
            if  maxScore < student.score
                maxScore = student.score
            end
        end
        diff = 7 - maxScore

        students.each do |student|
            student.score = student.score + diff
        end
    end
end

