require 'rails_helper'
describe  Student do
  it 'exists' do
    student = Student.new({})

    expect(student).to be_a(Student)
  end

  it '#id and name returns id and name of a student' do
    student = Student.new({:name=> 'me', :id=> 2})

    expect(student.name).to eq('me')
    expect(student.id).to eq(2)
  end
end
