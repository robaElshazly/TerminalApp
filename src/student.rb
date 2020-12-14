class Student
    attr_accessor :first_name , :last_name
    def initialize(first_name,last_name)
      @first_name=first_name
      @last_name=last_name
      @enrollments=[]
    end
    def enrol_course(course) 
      @enrollments<<course
    end  
    def show_enrollments
      enrollments_names=[]
      @enrollments.each do |course|
        enrollments_names<<course.name
      end 
    return enrollments_names  
    end    
end