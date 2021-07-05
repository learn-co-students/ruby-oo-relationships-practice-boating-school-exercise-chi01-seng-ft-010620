class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def pass_student(student, test_name)
        if bt = BoatingTest.all.find {|bt| bt.student == student && bt.name == test_name}
            bt.status = "passed"
        else 
            BoatingTest.new(student, test_name, "passed", self)
        end 
    end 

    def fail_student(student, test_name)
        if bt = BoatingTest.all.find {|bt| bt.student == student && bt.name == test_name}
            bt.status = "failed"
        else 
            BoatingTest.new(student, test_name, "failed", self)
        end 
    end 
end
