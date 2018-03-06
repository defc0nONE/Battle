feature 'Player 1 attack test' do
  scenario 'Player 1 attacks and receives confirmation' do
    sign_in_and_play
    click_link('Impart!')
    expect(page).to have_text('FRANK has imparted superpowers to FRED!')
  end
end
