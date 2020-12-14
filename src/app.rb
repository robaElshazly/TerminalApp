require "tty-prompt"
require "colorize"
require_relative("./student.rb")
require_relative("./course.rb")
require_relative("./school.rb")
#-----------
def validate_name(name)
  if name.empty?
    return false
  end  
  return true
end  
#------------
class InvalidArguments < StandardError
end  
 #------
def parse_argv(argv_arr)
  raise InvalidArguments,"invalid arvg argument" if argv_arr.length!=2 && argv_arr.length!=0
  raise "invalid arvg argument" if !validate_name(argv_arr[0])||!validate_name(argv_arr[1])
 
 student= Student.new(argv_arr[0],argv_arr[1])
 return student
end
#------------
def get_username
  student=Student.new("","")
  puts "enter your first name"
  name=STDIN.gets.chomp
 until validate_name(name) do
    puts "please enter a valid name"
    name=STDIN.gets.strip
  end
  student.first_name=name
  puts "enter your last name"
  name=STDIN.gets.strip
  until validate_name(name) do
    puts "please enter a valid name"
    name=STDIN.gets.strip
  end
  student.last_name=name
  return student
end 
#populating objects
html_syllabus=["chapter1","chapter2","chapter3"]
html_course=Course.new("Html Fundementals","1 month","$25",html_syllabus)
#html course object generated-----
css_syllabus=["chapter1","chapter2","chapter3"]
css_course=Course.new("CSS Fundementals","2 weeks","$15",html_syllabus)
#css course object generated-----
js_syllabus=["chapter1","chapter2","chapter3"]
js_course=Course.new("Introduction to Java Script ","2 month","$40",html_syllabus)
#js course object generated-----
courses_list=[html_course,css_course,js_course]
$code_school=School.new("Code School",courses_list)

begin 
 student=parse_argv(ARGV)
rescue InvalidArguments    #for 1 or more than 2 ARGV arguments
  puts "you did not enter right number of command line arguments"
  student=get_username
rescue     #for 0 ARGV argument
  student=get_username  
end
#--------
puts "#{ARGV.length}"
puts "Welcome #{student.first_name} #{student.last_name} in our online learning school"
puts "If you need help to know how to use this app please read throgh help file in doc folder"

start
