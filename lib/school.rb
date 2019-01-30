class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    return sorted
  end
end
