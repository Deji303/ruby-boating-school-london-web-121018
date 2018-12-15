require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
no_crashing = spongebob.add_boating_test(puff, "Don't Crash 101","pending")
power_steering_failure = patrick.add_boating_test(puff,"Power Steering 202", "failed")
power_steering_pass = patrick.add_boating_test(krabs,"Power Steering 202", "passed" )
krabs.pass_student("Spongebob","Test")
krabs.pass_student("Spongebob","Test2")
krabs.pass_student("Spongebob","Test3")
krabs.pass_student("Spongebob","Test4")
krabs.fail_student("Spongebob","Test5")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
