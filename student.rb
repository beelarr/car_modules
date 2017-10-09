class Student
  include Car
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end