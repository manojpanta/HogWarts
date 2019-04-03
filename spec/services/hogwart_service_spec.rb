require 'rails_helper'
describe  HogwartService do
  it 'exists' do
    service = HogwartService.new
    expect(service).to be_a(HogwartService)
  end

  it '#get_students method returns students Array using HogwartAsAService', :vcr do
    students = HogwartService.new.get_students('Slytherin')
    expect(students).to be_a(Array)
  end

  it '#get_json method returns JSON object using HogwartAsAService', :vcr do
    students = HogwartService.new.get_json('house/Slytherin')

    expect(students).to be_a(Hash)
  end
end
