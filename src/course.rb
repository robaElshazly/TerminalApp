class Course
   @@course_no=0
   attr_reader :name
    def initialize(name,duration,price,syllabus)
        @name=name
        @duration=0
        @price=0
        @syllabus=[]
        @@course_no+=1
       @course_id= @@course_no
    end    
    
end