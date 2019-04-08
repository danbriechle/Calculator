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

    expect(page).to have_content("result: 15")
    expect(page).to have_content('3*5')
  end

  it 'can get the answer to complex problems' do
    visit '/'

    fill_in :calculator_input, with: "5*3+1+6/2+9*100"

    click_button 'Calculate'

    expect(page).to have_content("result: 919")
    expect(page).to have_content("5*3+1+6/2+9*100")

    fill_in :calculator_input, with: "5*3+1+6/85+9*100"

    click_button 'Calculate'

    expect(page).to have_content("result: 916.07")
    expect(page).to have_content("5*3+1+6/85+9*100")
  end
end
