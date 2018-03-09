feature 'Player 1 attack test' do
  scenario 'Player 1 attacks and receives confirmation' do
    sign_in_and_play
    click_button 'Impart!'
    expect(page).to have_text('Frank has imparted superpowers to Fred!')
  end

  scenario 'Increase Player 2 SP by 10' do
    sign_in_and_play
    click_button 'Impart!'
    expect(page).not_to have_content 'Fred: 0SP'
    expect(page).to have_content 'Fred: 10SP'
  end
end
