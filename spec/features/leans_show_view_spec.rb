require 'spec_helper'

Capybara.default_driver = :selenium

feature "Go to lean process" do 

  given(:lean) { FactoryGirl.create :lean }

  scenario "render show if exists" do
    visit '/leans?id=' + lean.id.to_s
    fill_in 'id', :with => lean.id.to_s
    click_button('Go')
    expect(page).to have_content 'Lean ' + lean.id.to_s
  end

  scenario "render 404 if not exists" do
    visit '/leans?id=' + lean.id.to_s
    fill_in 'id', :with => "0"
    click_button('Go')
    expect(page).to have_content "The page you were looking for doesn't exist."
  end
  
end