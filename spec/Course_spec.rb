require_relative("../src/course.rb")
require_relative("../src/school.rb")
describe Course do
    css_syllabus=["chapter1","chapter2","chapter3"]
    it "can create without exceptions" do    # for display course information feature
       expect{css_course=Course.new("CSS Fundementals","2 weeks","$15",css_syllabus)}.not_to raise_error 
    end 
    it "can create a course" do              # for display course information feature
        css_course=Course.new("CSS Fundementals","2 weeks","$15",css_syllabus)
        expect(css_course.name).to eq("CSS Fundementals")
        expect(css_course.duration).to eq("2 weeks")
        expect(css_course.price).to eq("$15")
        expect(css_course.syllabus).to eq(css_syllabus)
    end  
end    

describe "a course object can be found by it's name" do
    css_syllabus=["chapter1","chapter2","chapter3"]
    html_syllabus=["chapter1","chapter2","chapter3"]
    it "can find a course object by course name" do    # used for display course information feature
        css_course=Course.new("CSS Fundementals","2 weeks","$15",css_syllabus)
        html_course=Course.new("html Fundementals","1 weeks","$20",html_syllabus)
        code_school=School.new("Code School",[css_course,html_course])
        expect(code_school.find_course("CSS Fundementals")).to eq(css_course)
    end    
end