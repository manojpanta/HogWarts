require 'rails_helper'
describe  HogwartAsAService do
  it 'exists' do
    service = HogwartAsAService.new
    expect(service).to be_a(HogwartAsAService)
  end

  it '#get_students method returns students Arraye', :vcr do
    students = HogwartAsAService.new.get_students('Slytherin')

    expect(students).to be_a(Array)
  end

  it '#get_json method returns JSON object', :vcr do
    WebMock.disable!
    students = HogwartAsAService.new.get_json('house')

    expect(students).to be_a(Array)
  end
end
