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
  raise InvalidArguments,"invalid arvg argument" if argv_arr.length!=2 && argv_arr.length!=0  # wrong arguments numbers
  raise "invalid arvg argument" if !validate_name(argv_arr[0])||!validate_name(argv_arr[1])  #empty arguments
 
 student= Student.new(argv_arr[0],argv_arr[1])
 return student
end
#------------
$student=Student.new("","")
def get_username
  puts "enter your first name"
  name=STDIN.gets.chomp
 until validate_name(name) do
    puts "please enter a valid name"
    name=STDIN.gets.strip
  end
  $student.first_name=name
  puts "enter your last name"
  name=STDIN.gets.strip
  until validate_name(name) do
    puts "please enter a valid name"
    name=STDIN.gets.strip
  end
  $student.last_name=name
  return $student
end 
#populating objects
html_syllabus=["chapter1","chapter2","chapter3"]
html_course=Course.new("Html Fundementals","1 month","$25",html_syllabus)
#html course object generated-----
css_syllabus=["chapter1","chapter2","chapter3"]
css_course=Course.new("CSS Fundementals","2 weeks","$15",css_syllabus)
#css course object generated-----
js_syllabus=["chapter1","chapter2","chapter3"]
js_course=Course.new("Introduction to Java Script ","2 month","$40",js_syllabus)
#js course object generated-----
courses_list=[html_course,css_course,js_course]
$code_school=School.new("Code School",courses_list)
#code_school
#--------
$prompt = TTY::Prompt.new
#-------
def continue?
  y_n=$prompt.select("do you want to continue",["yes","no"])
  if y_n=="yes"
    return true
  else 
    return false
  end  
end  
#---------
def select_course_actions(course_name)
  enrol_display_answer=$prompt.select("Welcome in #{course_name} course,choose an option",["Enroll","Display Details about the course","Go back","Exit"])
  case enrol_display_answer
  when "Enroll"       #featur 1 (enrolling)
    $student.enrol_course($code_school.find_course(course_name))
    puts "your enrollments list :"
    puts "#{$student.show_enrollments}"
    start  
  when "Display Details about the course"     # feature2 (display details of the course)
    puts "#{$code_school.find_course(course_name)}"
    answer=$prompt.select("what is next!!",["go back","Exit"])
    if answer=="go back" 
       select_course_actions(course_name) 
    else
          return
    end      
  when  "Go back"
    show_courses_list
  when "Exit"
    return  
    
  end  
end 
#-------
def select_enrollment_action
  if $student.enrollments.empty?
    puts "you are not enrolled in any courses"
    if continue?
      start
    else
      return 
    end   
  else   
    chosen_course_name=$prompt.select("Below is courses list you are enrolled in, select a course if you would like to unenroll",[$student.show_enrollments,"go back"].flatten)
    if chosen_course_name=="go back"
      start
    else 
      action=$prompt.select("would you like to unenroll in #{chosen_course_name}?",["yes","no"])
      case action 
      when "yes"     #feature 3 (unenrolling)
        $student.unenroll_course($code_school.find_course(chosen_course_name))
        puts "you are unenrolled from #{chosen_course_name}"
        start
      when "no"  
        select_enrollment_action
      end  
    end   
  end 
end 
#-------
def show_courses_list
  courses_list_answer=$prompt.select("Here are the courses we offer. If you would like to Enroll,select one",$code_school.print_courses_names)
  select_course_actions(courses_list_answer)
end
#------------
def start
  answer=$prompt.select("Please select and option",["Show courses list","show my Enrollments","Exit"])
  case answer
  when "Show courses list"
    show_courses_list
  when "show my Enrollments" 
    select_enrollment_action
  when "Exit" 
    return 
  end  
end
#---------

begin 
 $student=parse_argv(ARGV)
rescue InvalidArguments    #for 1 or more than 2 ARGV arguments
  puts "you did not enter right number of command line arguments"
  $student=get_username
rescue     #for 0 ARGV argument
  $student=get_username  
end
#--------
puts "#{ARGV.length}"
puts "Welcome #{$student.first_name} #{$student.last_name} in our online learning school"
puts "If you need help to know how to use this app please read throgh help file in doc folder"

start
