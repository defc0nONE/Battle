feature 'View hit points' do
  scenario 'Players have hit point values after names submitted' do
    visit('/')
    fill_in 'player_1_name', with: 'FRANK'
    fill_in 'player_2_name', with: 'FRED'
    click_button 'Submit'
    expect(page).to have_text('FRED: 100SP')
  end
end
