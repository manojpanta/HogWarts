class HogwartFacade
  def initialize(house)
    @house = house
  end


  def students
    service.get_students(@house).map do |student_data|
      Student.new(student_data)
    end
  end

  def service
    HogwartService.new
  end
end
