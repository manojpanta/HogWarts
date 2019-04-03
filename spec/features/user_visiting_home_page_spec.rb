require 'rails_helper'
describe 'user visitng home page' do
  context 'selects slytherin and click on students' do
    it 'returns students with hogwart as a service api', :vcr do
      visit '/'
      select 'Slytherin'
      click_on 'Get Students'

      within '.students' do
        expect(page).to have_css('.student', count: 22)
        expect(page).to have_content('Name', count: 22)
        expect(page).to have_content('Id', count: 22)
      end
    end
  end
end
