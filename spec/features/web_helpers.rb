def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Frank'
  fill_in 'player_2_name', with: 'Fred'
  click_button 'Submit'
end

def impart_and_confirm
  click_button 'Impart!'
  click_button 'OK'
end
