require_relative 'car'

class Student
  include Car
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def student_age(age)
    puts "Before begin rescue block"
    begin
      puts "Hi, this is working"
      raise StudentTypeError, "This is not an NSS student."
      # raise ArgumentError, "Argument is not a number" unless age.is_a? Integer
      puts "Is it still working?"
      puts "#{name} is #{age} years old"
    rescue ArgumentError => e
      puts "There been an exception : #{e.message}"
      puts "Here is the backtrace #{e.backtrace}"
    rescue  ZeroDivisionError => e
      puts "Don't divide by 0"
    rescue StudentTypeError => e
      puts "Theres been an exception #{e.message}"
    else
      p "Run this code if everything goes well"
    ensure
      puts "This code always runs!!!!!"
    end
    p "After begin-end block of code"
  end
end

