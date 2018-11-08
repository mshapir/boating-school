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

  def fail_student(student, test_name)
    testf = boating_tests.find do |boating_test|
      boating_test.student == student && boating_test.test_name == test_name
      # boating_test.student == student &&
    end
    testf.test_status = "failed"
end

  def pass_student(student, test_name)
    testp = boating_tests.find do |boating_test|
      boating_test.student == student && boating_test.test_name == test_name
    end
    testp.test_status = "passed"
  end

  def boating_tests
    BoatingTest.all.select do |boating_test|
      boating_test.instructor == self
    end
  end
end
