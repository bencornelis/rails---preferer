require "rails_helper"

describe "root path" do
  it "displays a button to ask a question" do
    visit root_path
    expect(page).to have_content("Ask Question")
  end
end

describe 'loading the question form' do
  it 'loads the question form', js: true do
    visit root_path
    expect(page).to have_no_content 'Save'
    click_on 'Ask Question'
    expect(page).to have_content 'Option A'
  end
end

describe "submitting a question" do
  it 'displays the question', js: true do
    visit root_path
    click_on 'Ask Question'
    fill_in "Option A", with: "use Rails"
    fill_in "Option B", with: "use Ember"
    click_on "Save"
    expect(page).to have_no_content "Option A"
    expect(page).to have_content "Would you rather use Rails or use Ember?"
  end
end

describe "Loading more question with scrolling" do
  it 'loads more question with scrolling' do

  end
end
