class HogwartFacade
  def initialize(house)
    @house = house
  end


  def students
    service.students.map do |student_data|
      Student.new(student_data)
    end
  end

  def service
    HogwartService.new
  end
end
