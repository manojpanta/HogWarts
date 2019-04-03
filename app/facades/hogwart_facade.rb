class HogwartFacade
  def initialize(house)
    @house = house
  end

  def students
    alternate_service.get_students(@house).map do |student_data|
      Student.new(student_data)
    end
  end

  def alternate_service
    HogwartAsAService.new
  end
end
