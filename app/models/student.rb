class Student

    attr_reader :first_name 

    @@all = []

    def initialize(first_name)
        @first_name = first_name 
        @@all << self 
    end 

    def add_boating_test(boating_test_name, test_status, instructor)
        BoatingTest.new(self, boating_test_name, test_status, instructor)
    end 

    def self.find_student(first_name)
        @@all.find do |student| student.first_name == first_name end 
    end 

   

    def pass_count 
       passed = BoatingTest.all.select do |test| 
            test.student == self && test.boating_test_status == "passed"
        end 
        passed.count 
    end 

    def total_count 
        total = BoatingTest.all.select do |test| 
            test.student == self
        end 
        total.count 
    end 

    def grade_percentage
        (self.pass_count.to_f / self.total_count.to_f) * 100 
    end 
    

    def self.all 
        @@all 
    end 


end
