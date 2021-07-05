class Student
    attr_reader :first_name

    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end 

    def self.find_student(name)
        @@all.find { |students| students.first_name == name}
    end 

    def grade_percentage
        my_tests = BoatingTest.all.select { |tests| tests.student == self}
        results = my_tests.map { |my_test| my_test.status}
        passed = results.select { |result| result == "passed"}
        percentage = (passed.count).to_f / (results.count).to_f
        percentage.round(2)
    end 
end
