require 'rails_helper'
describe 'user visitng home page' do
  context 'selects slytherin and click on students' do
    it 'returns students' do
      visit '/'
      select 'Slytherin'
      click_on 'Get Students'


      expect(current_path).to eq('/search?house=slythrin')
      expect(page).to have_css('.student', 22)
    end
  end
end
#
# # As a user
# # When I visit "/"
# # And I select "Slytherin" from the dropdown
# # And I click on "Get Students"
# # Then my path should be "/search" with "house=slytherin" in the parameters
# # And I should see a message "22 Students"
# # And I should see a list of the 22 members of Slytherin
# # And I should see a name and id for each student.
# ```
