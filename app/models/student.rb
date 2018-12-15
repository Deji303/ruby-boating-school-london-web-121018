class Student
  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(instructor,test_name,test_status)
    BoatingTest.new(instructor, self, test_name, test_status)
  end

  def self.find_student(first_name)
    @@all.find {|student| student.first_name == first_name}
  end

  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def grade_percentage
    passed_tests = tests.select{|test| test.test_status == 'pass'}.count
    percentage = (passed_tests.to_f/tests.count).round(2)
  end
end
