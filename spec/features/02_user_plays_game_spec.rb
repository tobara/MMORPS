
require "spec_helper"

feature "user inputs a response" do
  scenario "#the user plays rock" do
    visit "/"

    click_button "Rock"
    expect(page).to have_content("You chose Rock")

  end

  scenario "#the user plays paper" do
    visit "/"

    click_button "Paper"
    expect(page).to have_content("You chose Paper")

  end

  scenario "#the user plays scissor" do
    visit "/"

    click_button "Scissor"
    expect(page).to have_content("You chose Scissor")
  end

end
