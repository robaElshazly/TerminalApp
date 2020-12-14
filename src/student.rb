class Student
    attr_accessor :first_name , :last_name
    def initialize(first_name,last_name)
      @first_name=first_name
      @last_name=last_name
      @enrollments=[]
    end
    def enrol_course(course) 
      if !@enrollments.include?(course)
      @enrollments<<course
      else 
        puts "you are already enrolled in this course"
      end  
    end  
    def show_enrollments
      enrollments_names=[]
      @enrollments.each do |course|
        enrollments_names<<course.name
      end
      puts"you are now enrolled in :"   
      return enrollments_names  
    end    
end