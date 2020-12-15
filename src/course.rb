class Course
   @@course_no=0
   attr_reader :name , :duration , :price , :syllabus
    def initialize(name,duration,price,syllabus)
        @name=name
        @duration=duration
        @price=price
        @syllabus=syllabus
        @@course_no+=1
       @course_id= @@course_no
    end   
    
    def to_s
        puts "Course name:#{@name} Course duration:#{@duration} Course price:#{@price} "
        puts "Course syllabus:"
        puts @syllabus
    end    
    
end