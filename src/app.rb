require_relative("./student.rb")
def validate_name(name)
return true
end  
def parse_argv(argv_arr)
 if argv_arr.length!=2
  raise "invalid arvg argument" 
 end 
 if argv_arr[0].length==0
  raise "invalid arvg argument"
 end
 if argv_arr[1].length==0
  raise "invalid arvg argument"
 end
 if !validate_name(argv_arr[0]) || !validate_name(argv_arr[1])
  raise "invalid arvg argument"
 end
 student= Student.new(argv_arr[0],argv_arr[1])
 return student
end

begin
 student=parse_argv(ARGV)
rescue
  student=Student.new("","")
  puts "enter your first name"
  name=gets.chomp
 until validate_name(name) do
    puts "please enter a valid name"
    name=gets.chomp
  end
  student.first_name=name
  puts "enter your last name"
  name=gets.chomp
  until validate_name(name) do
    puts "please enter a valid name"
    name=gets.chomp
  end
  student.last_name=name
end
puts "Welcome #{student.first_name} #{student.last_name} in our online learning school"