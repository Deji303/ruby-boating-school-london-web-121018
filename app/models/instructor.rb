class Instructor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_name,test_name)
    has_student = BoatingTest.all.find do |test|
      test.test_name == test_name && test.student.first_name == student_name
      binding.pry
    end

    if has_student
      has_student.test_status = 'passed'
    else
      new_test = BoatingTest.new(self,student_name,test_name,'passed')
    end
    (has_student || new_test)
  end

  def fail_student(student_name,test_name)
    has_student = BoatingTest.all.find do |test|
      test.test_name == test_name && test.student.first_name == student_name
    end

    if has_student
      has_student.test_status = 'failed'
    else
      new_test = BoatingTest.new(self, student_name, test_name, 'failed')
    end
    (has_student || new_test)
  end

end
