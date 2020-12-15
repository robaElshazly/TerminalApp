require_relative("../src/student.rb")
describe Student do
    first_name="roba"
    last_name="shaz"
    it "can create a student without raising exception" do
        expect{student=Student.new(first_name,last_name)}.not_to raise_error
    end    
    
end    