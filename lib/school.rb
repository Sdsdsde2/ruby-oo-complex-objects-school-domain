# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade_level)
        hash = {}
        if @roster[grade_level]
            @roster[grade_level] << name         
        end
        if !@roster[grade_level]
            hash[grade_level] = []
            hash[grade_level] << name
        end
        @roster.merge!(hash)
    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        @roster[9] = @roster[9].sort
        @roster
    end
end