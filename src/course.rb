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
       return "\n Course name:".blue+"#{@name}"+"\n Course duration:".blue+"#{@duration}"+"\n Course price:".blue+"#{@price}"+" \n Course syllabus:".blue+"\n #{@syllabus}"
    end    
    
end