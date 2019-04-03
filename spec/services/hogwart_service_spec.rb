require 'rails_helper'
describe  HogwartService do
  it 'exists' do
    service = HogwartService.new
    expect(service).to be_a(HogwartService)
  end

  it '#get_students method returns students' do
    students = HogwartService.new.get_students('Slytherin')

    expect(students).to be_a(Hash)
  end
end