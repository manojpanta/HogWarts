require 'rails_helper'
describe  HogwartFacade do
  it 'exists' do
    facade = HogwartFacade.new('name')
    expect(facade).to be_a(HogwartFacade)
  end

  it '#students method returns students' do
    students = HogwartFacade.new('name').students

    expect(students).to be_a(Array)
  end
end
