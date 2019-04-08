require "rails_helper"
RSpec.describe "root", type: :feature do
  it 'can see a form for calculations' do
    visit '/'

    expect(page).to have_button("Calculate")

  end

  it 'can fill in form' do
    visit '/'

    fill_in :calculator_input, with: '3*5'

    click_button 'Calculate'

    save_and_open_page

    expect(page).to have_content("result: 15")
    expect(page).to have_content('3*5')
  end
end
