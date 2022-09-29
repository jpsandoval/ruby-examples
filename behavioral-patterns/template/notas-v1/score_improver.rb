class Student
    attr_accessor :score
    def initialize(s)
        @score = s
    end
end


class ScoreImprover
    def improve(students)
        diff = measureDifference(students)
        sumAll(diff)
    end
    def sumAll(diff)
        students.each do |student|
            student.score = student.score + diff
        end
    end
    def measureDifference(students)
        raise NotImplementedError
    end
end


class Improve7 < ScoreImprover
    def measureDifference(students)
        maxScore = 1
        students.each do |student|
            if  maxScore < student.score
                maxScore = student.score
            end
        end
        diff = 7 - maxScore
        return diff
    end
end

class Improve4 < ScoreImprover
    def measureDifference(students)
        minScore = 7
        students.each do |student|
            if  minScore > student.score
                minScore = student.score
            end
        end
        diff = 4 - minScore
        return diff
    end
end