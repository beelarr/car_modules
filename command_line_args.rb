command_line_args = ARGV #must be called ARGV  command line -- ruby command_line_args.rb  list of args

puts command_line_args
puts command_line_args.length
puts command_line_args.to_s
puts command_line_args[0].class
first_arg, *other_args = ARGV
puts first_arg.to_s
puts other_args.to_s

puts "Hello, what is your name?"
name = gets
puts "Welcome #{name}"

#or

puts "Hello, what is your name?"
name = gets.chomp
puts "Welcome #{name}"