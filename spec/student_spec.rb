require_relative("../src/student.rb")
require_relative("../src/course.rb")
describe Student do
    first_name="roba"
    last_name="shaz"
    css_syllabus=["chapter1","chapter2","chapter3"]
    css_course=Course.new("CSS Fundementals","2 weeks","$15",css_syllabus)
    html_course=Course.new("html Fundementals","1 weeks","$20",css_syllabus)
    it "can create a student without raising exception" do
        expect{student=Student.new(first_name,last_name)}.not_to raise_error
    end 
    it "can enroll in a course" do     #for enroll feature
      student=Student.new(first_name,last_name)
      student.enrol_course(css_course)
      expect(student.enrollments.length).to eq(1)
      expect(student.enrollments[0]).to eq(css_course) 
    end
    it "can't enroll twice in a course" do  #for enroll feature
      student=Student.new(first_name,last_name)
      student.enrol_course(css_course) 
      student.enrol_course(css_course) 
      expect(student.enrollments.length).to eq(1)
    end   
    
    it "can unenroll from a course when 1 course exist" do     #for unenroll feature
        student=Student.new(first_name,last_name)
        student.enrol_course(css_course) 
        student.unenroll_course(css_course)
        expect(student.enrollments.length).to eq(0)
      end 
      it "can unenroll from a specific course when multiple course exist" do     #for unenroll feature
        student=Student.new(first_name,last_name)
        student.enrol_course(css_course) 
        student.enrol_course(html_course)
        student.unenroll_course(css_course)
        expect(student.enrollments.length).to eq(1)
        expect(student.enrollments).to eq([html_course])
      end    
    
end    