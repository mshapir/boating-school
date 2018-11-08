class Student

attr_reader :first_name, :last_name

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end
  def self.all
    @@all
  end
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.full_names
    # all.map { |student| student.first_name + " " + student.last_name  }
    # all.map { |s| "#{s.first_name} #{s.last_name}"  }
    all.map { |s| s.full_name  }
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(name)
    all.find {|student| student.full_name == name  }
  end

end
