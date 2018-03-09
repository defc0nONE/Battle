feature 'Game over' do
  context 'when Player 1 reaches 60SP first' do
    before do
      sign_in_and_play
      8.times { impart_and_confirm }
    end

    scenario 'Player 1 loses' do
      click_button 'Impart!'
      expect(page).to have_content 'Fred loses!'
    end
  end
end
