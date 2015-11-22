require "spec_helper"

feature "user starts a new game against a computer" do
  scenario "#the user logs in for the first time" do
    visit "/"

    expect(page).to have_content("MMORPS")
    expect(page).to have_content("Score")
    expect(page).to have_content("0")
    # expect(page).to have_content("")
  end

  scenario "#the user has already logged in" do
    visit "/"

    click_button "Rock"
    expect(page).to have_content("You chose")
  end
end
