feature 'View hit points' do
  scenario 'Players have hit point values after names submitted' do
    sign_in_and_play
    expect(page).to have_text('Fred: 0SP')
  end
end
