require "rails_helper"
RSpec.describe "root", type: :feature do
  it 'can see a form for calculations' do
    visit '/'

    expect(page).to have_button("Calculate")
  end
end
