require "rails_helper"
RSpec.describe "root", type: :feature do
  it 'can see a form for calculations' do
    visit '/'

    expect(page).to have_button("Calculate")

  end

  xit 'can fill in form' do
    visit '/'

    fill_in :calculator_input, with: '3*5'

    click_button 'Calculate'

  end
end
