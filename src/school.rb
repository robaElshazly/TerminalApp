class School
    attr_reader :courses
    def initialize(name,courses)
        @name=name
        @courses=courses
    end   
    
    def print_courses_names
        courses_names=[]
        @courses.each do |course|
            courses_names<< course.name
        end   
       return courses_names 
    end  
    
    def add_course(course)
      @courses<<course
      @courses.flatten
    end 
    def find_course(name)
        courses.each do |course|
          if name==course.name
            return course
          end  
        end 
        return false 
      end  
end    