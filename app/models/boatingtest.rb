class BoatingTest
  attr_accessor :instructor, :student, :test_name, :test_status
  @@all = []

  def initialize(instructor,student,test_name,test_status)
    @instructor = instructor
    @student = student
    @test_name = test_name
    @test_status = test_status
    @@all << self
  end

  def self.all
    @@all
  end

end
