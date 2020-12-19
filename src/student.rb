class Student
    attr_accessor :first_name , :last_name
    attr_reader :enrollments
    def initialize(first_name,last_name)
      @first_name=first_name
      @last_name=last_name
      @enrollments=[]
    end
    def enrol_course(course) 
      if !@enrollments.include?(course)
      @enrollments<<course
      else 
        puts "you are already enrolled in this course".red
      end  
    end  

    def unenroll_course(course)
     if enrollments.include?(course)
       @enrollments.delete(course)
     end 
    end

    def show_enrollments
      enrollments_names=[]
      @enrollments.each do |course|
        enrollments_names<<course.name
      end  
      return enrollments_names  
    end    
end