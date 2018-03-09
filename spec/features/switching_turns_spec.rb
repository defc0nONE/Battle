feature 'Switching turns' do
  context 'Seeing the current turn' do
    scenario 'At game start' do
      sign_in_and_play
      expect(page).to have_content 'Frank\'s turn'
    end

    scenario 'After player 1 attacks' do
      sign_in_and_play
      impart_and_confirm
      expect(page).not_to have_content 'Frank\'s turn'
      expect(page).to have_content 'Fred\'s turn'
    end
  end
end
