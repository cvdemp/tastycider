require 'rails_helper'

feature 'user can view a list of ciders', %{
  As a user
  I want see a list of all the ciders
  So I can find a tasty drink
} do

  #   Acceptance Criteria
  # [ ] User can see a list of all ciders
  # [ ] User does not have to be logged in to see a list of bars

let!(:cider) { Cider.create!(name: 'Cider 1')}
let!(:other_cider) {Cider.create!(name: 'Cider 2')}

 scenario 'user visits homepage' do
   visit '/ciders'
   expect(page).to have_content('Cider 1')
   expect(page).to have_content('Cider 2')
 end
end
