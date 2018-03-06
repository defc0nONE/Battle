feature 'Enter names' do
  scenario 'Players fill in names, submit, get shown on screen' do
    visit('/')
    fill_in 'player_1_name', with: 'FRANK'
    fill_in 'player_2_name', with: 'FRED'
    click_button 'Submit'
    expect(page).to have_text('Player 1: FRANK vs Player 2: FRED')
  end
end
