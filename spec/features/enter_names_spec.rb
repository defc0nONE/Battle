feature 'Enter names' do
  scenario 'Players fill in names, submit, get shown on screen' do
    sign_in_and_play
    expect(page).to have_text('Player 1: FRANK vs Player 2: FRED')
  end
end
