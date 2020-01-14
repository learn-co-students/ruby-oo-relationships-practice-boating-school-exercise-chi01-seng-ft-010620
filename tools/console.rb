require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dave = Student.new("Dave")
duke = Instructor.new("Duke")
sam = Student.new("Sam")
derrick = Instructor.new("Derrick")
nick = Instructor.new("Nick")
george = Student.new("George")

test1 = BoatingTest.new(dave, "sailing", "passed", duke)
test2 = BoatingTest.new(sam, "sailing", "passed", derrick)
test3 = BoatingTest.new(dave, "rowing", "failed", nick)
test4 = BoatingTest.new(dave, "rowing", "passed", nick)
george.add_boating_test("sailing", "passed", nick)

nick.fail_student(sam, "sailing")
p BoatingTest.all

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line

